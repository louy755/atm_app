class UserInfo < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  before_save :update_image_atteibutes

  private
   def update_image_atteibutes
   	if image.present? && image_changed?
   		self.image_content_type = image.file.content_typr
   		self.image_file_size = image.file.size
   	end
   end
end
