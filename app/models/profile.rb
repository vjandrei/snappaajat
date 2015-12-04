class Profile < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_attached_file :image, :styles => { :medium => "600x600>", :thumb => "100x100>" }, default_url: "/images/:style/snappi-missing.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	#validates_attachment_size
	
	def user_params
    params.require(:profile).permit(:nickname, :description, :category_id)
	end

end
