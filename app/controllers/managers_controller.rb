class ManagersController < ApplicationController
  def index
    @managers = Manager.all

    render("managers/index.html.erb")
  end

  def show
    @manager = Manager.find(params[:id])

    render("managers/show.html.erb")
  end

  def new
    @manager = Manager.new

    render("managers/new.html.erb")
  end

  def create
    @manager = Manager.new

    @manager.user_id = params[:user_id]

    save_status = @manager.save

    if save_status == true
      redirect_to("/managers/#{@manager.id}", :notice => "Manager created successfully.")
    else
      render("managers/new.html.erb")
    end
  end

  def edit
    @manager = Manager.find(params[:id])

    render("managers/edit.html.erb")
  end

  def update
    @manager = Manager.find(params[:id])

    @manager.user_id = params[:user_id]

    save_status = @manager.save

    if save_status == true
      redirect_to("/managers/#{@manager.id}", :notice => "Manager updated successfully.")
    else
      render("managers/edit.html.erb")
    end
  end

  def destroy
    @manager = Manager.find(params[:id])

    @manager.destroy

    if URI(request.referer).path == "/managers/#{@manager.id}"
      redirect_to("/", :notice => "Manager deleted.")
    else
      redirect_to(:back, :notice => "Manager deleted.")
    end
  end
end
