class Lecture < ActiveRecord::Base
		mount_uploader :attachment, AttachmentUploader
	validates :name, :number, presence: true
end
