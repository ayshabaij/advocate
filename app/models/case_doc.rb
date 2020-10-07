class CaseDoc < ApplicationRecord
  mount_uploader :document_name, AttachmentUploader
  # belongs_to :advocate
end
