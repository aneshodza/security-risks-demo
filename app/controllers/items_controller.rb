class ItemsController < ApplicationController
  def index
    if params[:query]
      @items = Item.where("public = true AND name= '#{params[:query]}'")
      @query = params[:query]
    else
      @items = Item.where(public: true)
      @query = ""
    end
  end
end
