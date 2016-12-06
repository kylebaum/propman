class Property < ActiveRecord::Base

  belongs_to :user
  belongs_to :tenant
  belongs_to :owner
  belongs_to :manager

  has_many :petpolicies
  has_many :neighborhoods
  has_many :messages
  has_many :maintenancerequests
  has_many :cities

    validates :user_id, :presence => true

end
