class PagesController < ApplicationController
  def home
    @title = 'Home Page'
  end

  def about
    @title = 'About Us'
  end

  def contact
    @title = 'Contact Us'
  end

  def contact_submit
    name = params[:name]
    
    if name.blank?
      Rails.logger.error "Name cannot be blank"
      flash[:alert] = "Name cannot be blank"
      redirect_to contact_path

    else
      Rails.logger.info "Name submitted: #{name}"
      flash[:notice] = "Thank you, #{name}"
      redirect_to contact_path
    end
  end 
  
  def greet
    @title = 'Gretting'
  end
end
