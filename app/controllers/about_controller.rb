class AboutController < ApplicationController

  def index
    
  end

  def contact
  	ContactMailer.welcome(params[:name], params[:email], params[:subject], params[:message]).deliver_now
  	render :json => { :success => true }
  end
end
