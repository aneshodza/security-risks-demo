class SsrfController < ApplicationController
  def index
    eval params[:query]
  end
end
