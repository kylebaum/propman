Rails.application.routes.draw do

  root "properties#index"
  # Routes for the Maintenancerequest resource:
  # CREATE
  get "/maintenancerequests/new", :controller => "maintenancerequests", :action => "new"
  post "/create_maintenancerequest", :controller => "maintenancerequests", :action => "create"

  # READ
  get "/maintenancerequests", :controller => "maintenancerequests", :action => "index"
  get "/maintenancerequests/:id", :controller => "maintenancerequests", :action => "show"

  # UPDATE
  get "/maintenancerequests/:id/edit", :controller => "maintenancerequests", :action => "edit"
  post "/update_maintenancerequest/:id", :controller => "maintenancerequests", :action => "update"

  # DELETE
  get "/delete_maintenancerequest/:id", :controller => "maintenancerequests", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Tenant resource:
  # CREATE
  get "/tenants/new", :controller => "tenants", :action => "new"
  post "/create_tenant", :controller => "tenants", :action => "create"

  # READ
  get "/tenants", :controller => "tenants", :action => "index"
  get "/tenants/:id", :controller => "tenants", :action => "show"

  # UPDATE
  get "/tenants/:id/edit", :controller => "tenants", :action => "edit"
  post "/update_tenant/:id", :controller => "tenants", :action => "update"

  # DELETE
  get "/delete_tenant/:id", :controller => "tenants", :action => "destroy"
  #------------------------------

  # Routes for the Owner resource:
  # CREATE
  get "/owners/new", :controller => "owners", :action => "new"
  post "/create_owner", :controller => "owners", :action => "create"

  # READ
  get "/owners", :controller => "owners", :action => "index"
  get "/owners/:id", :controller => "owners", :action => "show"

  # UPDATE
  get "/owners/:id/edit", :controller => "owners", :action => "edit"
  post "/update_owner/:id", :controller => "owners", :action => "update"

  # DELETE
  get "/delete_owner/:id", :controller => "owners", :action => "destroy"
  #------------------------------

  # Routes for the Manager resource:
  # CREATE
  get "/managers/new", :controller => "managers", :action => "new"
  post "/create_manager", :controller => "managers", :action => "create"

  # READ
  get "/managers", :controller => "managers", :action => "index"
  get "/managers/:id", :controller => "managers", :action => "show"

  # UPDATE
  get "/managers/:id/edit", :controller => "managers", :action => "edit"
  post "/update_manager/:id", :controller => "managers", :action => "update"

  # DELETE
  get "/delete_manager/:id", :controller => "managers", :action => "destroy"
  #------------------------------

  # Routes for the Petpolicy resource:
  # CREATE
  get "/petpolicies/new", :controller => "petpolicies", :action => "new"
  post "/create_petpolicy", :controller => "petpolicies", :action => "create"

  # READ
  get "/petpolicies", :controller => "petpolicies", :action => "index"
  get "/petpolicies/:id", :controller => "petpolicies", :action => "show"

  # UPDATE
  get "/petpolicies/:id/edit", :controller => "petpolicies", :action => "edit"
  post "/update_petpolicy/:id", :controller => "petpolicies", :action => "update"

  # DELETE
  get "/delete_petpolicy/:id", :controller => "petpolicies", :action => "destroy"
  #------------------------------

  # Routes for the Neighborhood resource:
  # CREATE
  get "/neighborhoods/new", :controller => "neighborhoods", :action => "new"
  post "/create_neighborhood", :controller => "neighborhoods", :action => "create"

  # READ
  get "/neighborhoods", :controller => "neighborhoods", :action => "index"
  get "/neighborhoods/:id", :controller => "neighborhoods", :action => "show"

  # UPDATE
  get "/neighborhoods/:id/edit", :controller => "neighborhoods", :action => "edit"
  post "/update_neighborhood/:id", :controller => "neighborhoods", :action => "update"

  # DELETE
  get "/delete_neighborhood/:id", :controller => "neighborhoods", :action => "destroy"
  #------------------------------

  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  # Routes for the Property resource:
  # CREATE
  get "/properties/new", :controller => "properties", :action => "new"
  post "/create_property", :controller => "properties", :action => "create"

  # READ
  get "/properties", :controller => "properties", :action => "index"
  get "/properties/:id", :controller => "properties", :action => "show"

  # UPDATE
  get "/properties/:id/edit", :controller => "properties", :action => "edit"
  post "/update_property/:id", :controller => "properties", :action => "update"

  # DELETE
  get "/delete_property/:id", :controller => "properties", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
