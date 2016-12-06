class Property < ActiveRecord::Base

  belongs_to :user



  has_many :messages
  has_many :maintenancerequests


    validates :user_id, :presence => true

end
