class Division < ActiveRecord::Base
  has_many   :users
  has_many   :plans
end
