class PropertiesController < ApplicationController
  def index
    @properties = Property.all

    render("properties/index.html.erb")
  end

  def show
    @property = Property.find(params[:id])

    render("properties/show.html.erb")
  end

  def new
    @property = Property.new

    render("properties/new.html.erb")
  end

  def create
    @property = Property.new

    @property.description = params[:description]
    @property.address = params[:address]
    @property.city_id = params[:city_id]
    @property.neighborhood_id = params[:neighborhood_id]
    @property.petpolicy_id = params[:petpolicy_id]
    @property.price = params[:price]
    @property.numberbed = params[:numberbed]
    @property.numberbath = params[:numberbath]
    @property.owner_id = params[:owner_id]
    @property.manager_id = params[:manager_id]
    @property.tenant_id = params[:tenant_id]
    @property.user_id = params[:user_id]

    save_status = @property.save

    if save_status == true
      redirect_to("/properties/#{@property.id}", :notice => "Property created successfully.")
    else
      render("properties/new.html.erb")
    end
  end

  def edit
    @property = Property.find(params[:id])

    render("properties/edit.html.erb")
  end

  def update
    @property = Property.find(params[:id])

    @property.description = params[:description]
    @property.address = params[:address]
    @property.city_id = params[:city_id]
    @property.neighborhood_id = params[:neighborhood_id]
    @property.petpolicy_id = params[:petpolicy_id]
    @property.price = params[:price]
    @property.numberbed = params[:numberbed]
    @property.numberbath = params[:numberbath]
    @property.owner_id = params[:owner_id]
    @property.manager_id = params[:manager_id]
    @property.tenant_id = params[:tenant_id]
    @property.user_id = params[:user_id]

    save_status = @property.save

    if save_status == true
      redirect_to("/properties/#{@property.id}", :notice => "Property updated successfully.")
    else
      render("properties/edit.html.erb")
    end
  end

  def destroy
    @property = Property.find(params[:id])

    @property.destroy

    if URI(request.referer).path == "/properties/#{@property.id}"
      redirect_to("/", :notice => "Property deleted.")
    else
      redirect_to(:back, :notice => "Property deleted.")
    end
  end
end
