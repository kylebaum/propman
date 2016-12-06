class Tenant < ActiveRecord::Base

  belongs_to :user



  has_many :messages
  has_many :maintenancerequests

end
