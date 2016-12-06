class TenantsController < ApplicationController
  def index
    @tenants = Tenant.all

    render("tenants/index.html.erb")
  end

  def show
    @tenant = Tenant.find(params[:id])

    render("tenants/show.html.erb")
  end

  def new
    @tenant = Tenant.new

    render("tenants/new.html.erb")
  end

  def create
    @tenant = Tenant.new

    @tenant.user_id = params[:user_id]

    save_status = @tenant.save

    if save_status == true
      redirect_to("/tenants/#{@tenant.id}", :notice => "Tenant created successfully.")
    else
      render("tenants/new.html.erb")
    end
  end

  def edit
    @tenant = Tenant.find(params[:id])

    render("tenants/edit.html.erb")
  end

  def update
    @tenant = Tenant.find(params[:id])

    @tenant.user_id = params[:user_id]

    save_status = @tenant.save

    if save_status == true
      redirect_to("/tenants/#{@tenant.id}", :notice => "Tenant updated successfully.")
    else
      render("tenants/edit.html.erb")
    end
  end

  def destroy
    @tenant = Tenant.find(params[:id])

    @tenant.destroy

    if URI(request.referer).path == "/tenants/#{@tenant.id}"
      redirect_to("/", :notice => "Tenant deleted.")
    else
      redirect_to(:back, :notice => "Tenant deleted.")
    end
  end
end
