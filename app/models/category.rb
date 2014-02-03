class Category < ActiveRecord::Base
  has_many :companies
  validates :title, presence: true, uniqueness: true
  mount_uploader :logo, LogoUploader
end
