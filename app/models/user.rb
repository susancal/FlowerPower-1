require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password_hash, presence: true
  validates :password, presence: true
  has_many :cups
  validate :password_length



  def password
    @password ||= Password.new(password_hash)
  end

  def password_length
    if @original_password && @original_password.length < 4
      self.errors.add(:password, "must be greater than 4 characters")
    end
  end

  def password=(new_password)
    @original_password = new_password
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end

  def todays_cups

  end

end
