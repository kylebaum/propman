class MessagesController < ApplicationController
  def index
    @messages = Message.all

    render("messages/index.html.erb")
  end

  def show
    @message = Message.find(params[:id])

    render("messages/show.html.erb")
  end

  def new
    @message = Message.new

    render("messages/new.html.erb")
  end

  def create
    @message = Message.new

    @message.user_id = params[:user_id]
    @message.tenant_id = params[:tenant_id]
    @message.owner_id = params[:owner_id]
    @message.manager_id = params[:manager_id]
    @message.property_id = params[:property_id]
    @message.body = params[:body]

    save_status = @message.save

    if save_status == true
      redirect_to("/messages/#{@message.id}", :notice => "Message created successfully.")
    else
      render("messages/new.html.erb")
    end
  end

  def edit
    @message = Message.find(params[:id])

    render("messages/edit.html.erb")
  end

  def update
    @message = Message.find(params[:id])

    @message.user_id = params[:user_id]
    @message.tenant_id = params[:tenant_id]
    @message.owner_id = params[:owner_id]
    @message.manager_id = params[:manager_id]
    @message.property_id = params[:property_id]
    @message.body = params[:body]

    save_status = @message.save

    if save_status == true
      redirect_to("/messages/#{@message.id}", :notice => "Message updated successfully.")
    else
      render("messages/edit.html.erb")
    end
  end

  def destroy
    @message = Message.find(params[:id])

    @message.destroy

    if URI(request.referer).path == "/messages/#{@message.id}"
      redirect_to("/", :notice => "Message deleted.")
    else
      redirect_to(:back, :notice => "Message deleted.")
    end
  end
end
