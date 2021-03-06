class OwnersController < ApplicationController
  def index
    @owners = Owner.all

    render("owners/index.html.erb")
  end

  def show
    @owner = Owner.find(params[:id])

    render("owners/show.html.erb")
  end

  def new
    @owner = Owner.new

    render("owners/new.html.erb")
  end

  def create
    @owner = Owner.new

    @owner.user_id = params[:user_id]

    save_status = @owner.save

    if save_status == true
      redirect_to("/owners/#{@owner.id}", :notice => "Owner created successfully.")
    else
      render("owners/new.html.erb")
    end
  end

  def edit
    @owner = Owner.find(params[:id])

    render("owners/edit.html.erb")
  end

  def update
    @owner = Owner.find(params[:id])

    @owner.user_id = params[:user_id]

    save_status = @owner.save

    if save_status == true
      redirect_to("/owners/#{@owner.id}", :notice => "Owner updated successfully.")
    else
      render("owners/edit.html.erb")
    end
  end

  def destroy
    @owner = Owner.find(params[:id])

    @owner.destroy

    if URI(request.referer).path == "/owners/#{@owner.id}"
      redirect_to("/", :notice => "Owner deleted.")
    else
      redirect_to(:back, :notice => "Owner deleted.")
    end
  end
end
