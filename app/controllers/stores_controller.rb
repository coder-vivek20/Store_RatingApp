class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update]

  def index
    @stores = Store.all
  end

  def show
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to stores_path, notice: 'Store added successfully'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @store.update(store_params)
      redirect_to @store, notice: 'Store updated successfully'
    else
      render :edit
    end
  end

  private

  def set_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:name, :address, :user_id)
  end
end
