class User < ActiveRecord::Base
  has_many :requests
  has_many :runs, through: :requests
  has_many :relationships
end
