class User < ActiveRecord::Base
  has_secure_password
  has_many :plans
  has_many :runs, through: :plans
  has_many :relationships, foreign_key: "inviter_id"
  has_many :relationships, foreign_key: "invited_id"

  def self.authenticate(username, password)
      user = User.find_by(username: username)
      return user.authenticate(password) unless user == nil
      nil
  end
end
