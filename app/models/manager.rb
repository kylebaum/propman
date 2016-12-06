class Manager < ActiveRecord::Base


  has_many :messages
  has_many :maintenancerequests

  belongs_to :user

end
