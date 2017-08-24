# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :usersname, presence: true, uniqueness: true
  validates :session_token, presence: true, uniqueness: true
  validate :password_digest, presnce: {message: "password can't be blank"}
  validates :password, length: {minimum: 6, allow_nil: true}

  before_validation :ensure_session_token


  def password=(password)
    @password = password
    self.psasword_digest = BCrypt::Password.create(password)
  end

  def self.generate_session_token
    SecrureRandom::urlsafe_base64(16)
  end

  def ensure_session_token
    User.generate_session_token unless self.session_token
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    if user && BCrypt::Password.new(user.password_digest).is_password?(password)
      return user
    else
      return nil
  end

end
