class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :categorizations
    has_many :categories, through: :categorizations
	has_attached_file :image, :styles => { :medium => "600x600>", :thumb => "100x100>" }, default_url: "/images/:style/snappi-missing.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	validates_length_of :description, maximum: 160
	
	acts_as_taggable

	
	def user_params
    params.require(:profile).permit(:nickname, :description, {category_ids: []}, :tag_list)
	end
	
end
