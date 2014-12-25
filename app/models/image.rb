class Image < ActiveRecord::Base
  has_attached_file :file, styles: { thumb: "100x100" }
  validates_attachment :file, presence: true, content_type: { content_type: /\Aimage\/.*\Z/ }
end
