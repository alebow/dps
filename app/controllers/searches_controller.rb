class SearchesController < ApplicationController
  before_action :signed_in_user

  def new
    @search = current_user.searches.new
  end

  def create
    @search = current_user.searches.build(search_params)
    if @search.save
      flash[:success] = "Search created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def show
    @search = Search.find(params[:id])
    @client = @search.client
    @user = @search.user.name
  end

  def edit
    @search = Search.find(params[:id])
    @name = @search.client.name
    @position = @search.position
  end

  def update
    @search = Search.find(params[:id])
    if @search.update(search_params)
      redirect_to @search, notice: 'Search was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    Search.find(params[:id]).destroy
    flash[:success] = "Search deleted."
    redirect_to searches_url
  end

  def index
    @searches = Search.where(:closed => false)
    @closed = Search.where(:closed => true)
  end

  private

    def search_params
      params.require(:search).permit(:position, :user_id, :client_id, :closed, :close_date, :fee)
    end

end
