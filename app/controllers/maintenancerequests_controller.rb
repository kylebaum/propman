class MaintenancerequestsController < ApplicationController
  def index
    @maintenancerequests = Maintenancerequest.all

    render("maintenancerequests/index.html.erb")
  end

  def show
    @maintenancerequest = Maintenancerequest.find(params[:id])

    render("maintenancerequests/show.html.erb")
  end

  def new
    @maintenancerequest = Maintenancerequest.new

    render("maintenancerequests/new.html.erb")
  end

  def create
    @maintenancerequest = Maintenancerequest.new

    @maintenancerequest.user_id = params[:user_id]
    @maintenancerequest.tenant_id = params[:tenant_id]
    @maintenancerequest.owner_id = params[:owner_id]
    @maintenancerequest.manager_id = params[:manager_id]
    @maintenancerequest.property_id = params[:property_id]
    @maintenancerequest.body = params[:body]

    save_status = @maintenancerequest.save

    if save_status == true
      redirect_to("/maintenancerequests/#{@maintenancerequest.id}", :notice => "Maintenancerequest created successfully.")
    else
      render("maintenancerequests/new.html.erb")
    end
  end

  def edit
    @maintenancerequest = Maintenancerequest.find(params[:id])

    render("maintenancerequests/edit.html.erb")
  end

  def update
    @maintenancerequest = Maintenancerequest.find(params[:id])

    @maintenancerequest.user_id = params[:user_id]
    @maintenancerequest.tenant_id = params[:tenant_id]
    @maintenancerequest.owner_id = params[:owner_id]
    @maintenancerequest.manager_id = params[:manager_id]
    @maintenancerequest.property_id = params[:property_id]
    @maintenancerequest.body = params[:body]

    save_status = @maintenancerequest.save

    if save_status == true
      redirect_to("/maintenancerequests/#{@maintenancerequest.id}", :notice => "Maintenancerequest updated successfully.")
    else
      render("maintenancerequests/edit.html.erb")
    end
  end

  def destroy
    @maintenancerequest = Maintenancerequest.find(params[:id])

    @maintenancerequest.destroy

    if URI(request.referer).path == "/maintenancerequests/#{@maintenancerequest.id}"
      redirect_to("/", :notice => "Maintenancerequest deleted.")
    else
      redirect_to(:back, :notice => "Maintenancerequest deleted.")
    end
  end
end
