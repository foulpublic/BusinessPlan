class Service < ActiveRecord::Base
  has_many :services
  has_many :devisions
end
