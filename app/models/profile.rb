class Profile < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "600x600>", :thumb => "100x100>" }, default_url: "/images/:style/snappi-missing.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	
	def user_params
    params.require(:profile).permit(:nickname, :description)
	end
	
end
