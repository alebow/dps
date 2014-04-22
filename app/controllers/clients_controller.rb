class ClientsController < ApplicationController
	before_action :signed_in_user
  # before_save { self.name = name.downcase }

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:success] = "Client added!"
      redirect_to root_url
    else
      render 'clients/index'
    end
  end

	def index
		@clients = Client.all
	end

	def show
  	@client = Client.find(params[:id])
    @searches = @client.searches.where(:closed => false)
    @closed = Client.find(params[:id]).searches.where(:closed => true)
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to @client, notice: 'Client was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    Client.find(params[:id]).destroy
    flash[:success] = "Client deleted."
    redirect_to clients_url
  end

  private

    def client_params
      params.require(:client).permit(:name)
    end

end


