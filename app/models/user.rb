# == Schema Information
#
# Table name: users
#
#  id            :integer         not null, primary key
#  user_name     :string(255)     not null
#  name          :string(255)     not null
#  email         :string(255)     not null
#  admin         :boolean         default(FALSE)
#  home_dir      :string(255)     not null
#  password_hash :string(255)
#  salt          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :username, :name, :email, :password, :password_confirmation

  # detroy any jobs this user owns, if the user is destroyed
  has_many :jobs, :dependent => :destroy

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, :presence => true,
                        :uniqueness => true,
                        :exclusion => { :in => %w(admin superuser root) }
  validates :name, :presence => true,
                   :length => { :maximum => 40}
  validates :password, :presence => { :on => :create },
                       :confirmation => true,
                       :length => { :within => 6..40 }

  validates :email, :uniqueness => { :case_sensitive => false },
                    :format => { :with => email_regex }

  before_save :encrypt_password

  def has_password?(submitted_password)
    password_hash == encrypt(submitted_password, salt)
  end

  def self.authenticate(username, submitted_password)
    user = find_by_username(username)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end

  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end

#  def signed_in?
#    !current_user.nil?
#  end

  private

    def encrypt_password
      if password.present?
        self.salt = make_salt if new_record?
        self.password_hash = encrypt(password, salt)
      end
    end

    def make_salt
      BCrypt::Engine.generate_salt
    end

    def encrypt(password, salt)
      BCrypt::Engine.hash_secret(password, salt)
    end
end
