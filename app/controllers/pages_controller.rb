class PagesController < ApplicationController
  def home
  	@profiles = Profile.all
  end
  
  def about
	  
  end
  
end
