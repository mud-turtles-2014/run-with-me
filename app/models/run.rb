class Run < ActiveRecord::Base
  has_many :plans
  has_many :users, through: :plans
end
