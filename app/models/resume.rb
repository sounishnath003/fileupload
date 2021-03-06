class Resume < ApplicationRecord
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
 validates :name, presence: true # Make sure the owner's name is present.
 validates :attachment, presence: true # Make sure the file attached is present.

 belongs_to :user
end
