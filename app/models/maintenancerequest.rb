class Maintenancerequest < ActiveRecord::Base

  belongs_to :user
  belongs_to :tenant
  belongs_to :manager
  belongs_to :owner 

end
