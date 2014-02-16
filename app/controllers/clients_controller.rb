class ClientsController < ApplicationController
	before_action :signed_in_user

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
  end

  def edit
    #@client = Client.find(params[:id])
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
  end

  private

    def client_params
      params.require(:client).permit(:name)
    end

end


