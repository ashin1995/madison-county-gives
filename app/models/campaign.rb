class Campaign < ApplicationRecord
  belongs_to :organization
  belongs_to :category
  has_attached_file :image, :styles=> {:large => "1000x700>", :thumb => "500x350>"},
  :default_url => "default.png"
  validates_attachment :image, :content_type => {:content_type =>
  ["image/jpeg", "image/png", "image/gif"]}
end
