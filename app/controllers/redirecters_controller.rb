class RedirectersController < ApplicationController
  after_filter :record_hit

  def show
    if params[:key].present?
      @shorty = Shorty.find_by_key(params[:key])
      redirect_to @shorty.url
    else
      render :text => 'eh?', :status => 200
    end
  end

  private
  def record_hit
    @shorty.hits.create if @shorty.present?
    ::Gabba::Gabba.new('UA-28347073-1','no-ego.net').page_view("home",'/')
  end
end
