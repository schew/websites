class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :password
  has_and_belongs_to_many :schools

  validates :name, presence: true

  before_save { |user| user.email = email.downcase }
  before_save  :create_remember_token
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :phone, presence: true, length: {is: 10}

  validates :password, presence: true, length: { minimum: 6 }

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
