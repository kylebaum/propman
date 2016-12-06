class Tenant < ActiveRecord::Base

  belongs_to :user
  belongs_to :manager
  belongs_to :owner
  belongs_to :property


  has_many :messages
  has_many :maintenancerequests

end
