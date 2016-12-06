class PetpoliciesController < ApplicationController
  def index
    @petpolicies = Petpolicy.all

    render("petpolicies/index.html.erb")
  end

  def show
    @petpolicy = Petpolicy.find(params[:id])

    render("petpolicies/show.html.erb")
  end

  def new
    @petpolicy = Petpolicy.new

    render("petpolicies/new.html.erb")
  end

  def create
    @petpolicy = Petpolicy.new

    @petpolicy.policy = params[:policy]

    save_status = @petpolicy.save

    if save_status == true
      redirect_to("/petpolicies/#{@petpolicy.id}", :notice => "Petpolicy created successfully.")
    else
      render("petpolicies/new.html.erb")
    end
  end

  def edit
    @petpolicy = Petpolicy.find(params[:id])

    render("petpolicies/edit.html.erb")
  end

  def update
    @petpolicy = Petpolicy.find(params[:id])

    @petpolicy.policy = params[:policy]

    save_status = @petpolicy.save

    if save_status == true
      redirect_to("/petpolicies/#{@petpolicy.id}", :notice => "Petpolicy updated successfully.")
    else
      render("petpolicies/edit.html.erb")
    end
  end

  def destroy
    @petpolicy = Petpolicy.find(params[:id])

    @petpolicy.destroy

    if URI(request.referer).path == "/petpolicies/#{@petpolicy.id}"
      redirect_to("/", :notice => "Petpolicy deleted.")
    else
      redirect_to(:back, :notice => "Petpolicy deleted.")
    end
  end
end
