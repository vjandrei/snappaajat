class PagesController < ApplicationController
  def home
  	if params[:category].blank?
		@profiles = Profile.all.order("created_at DESC")
	else
		@category_id = Category.find_by(name: params[:category]).id
		@profile = Profile.where(category_id: @category_id).order("created_at DESC")
	end
  end
  
  def about
	  
  end
  
end
