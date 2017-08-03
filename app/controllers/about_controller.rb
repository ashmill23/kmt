class AboutController < ApplicationController

  def index
    
  end

  def contact
  	begin
  		ContactMailer.welcome(params[:name], params[:email], params[:subject], params[:message]).deliver_now
  		render :json => { :success => true }
  	rescue StandardError => e
  		render :json => { :error => e.to_s }
  	end
  end
end
