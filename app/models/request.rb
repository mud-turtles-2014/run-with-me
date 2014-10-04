class Request < ActiveRecord::Base
  belongs_to :run
  belongs_to :user
end
