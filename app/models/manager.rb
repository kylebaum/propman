class Manager < ActiveRecord::Base

  has_many :properties
  has_many :tenants
  has_many :messages
  has_many :maintenancerequests

  belongs_to :user
  belongs_to :owner

end
