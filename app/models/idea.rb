class Idea < ApplicationRecord
	has_many :comments
	validates :name, :description, presence: true
	mount_uploader :picture, PictureUploader
end
