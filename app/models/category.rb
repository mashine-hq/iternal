class Category < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  mount_uploader :logo, LogoUploader
end
