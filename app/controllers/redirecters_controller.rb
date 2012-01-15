class RedirectersController < ApplicationController
  def show
    if params[:key].present?
      @shorty = Shorty.find_by_key(params[:key])
      redirect_to @shorty.url
    else
      render :text => 'eh?', :status => 200
    end
  end

end
