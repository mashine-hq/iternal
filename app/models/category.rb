class Category < ActiveRecord::Base
  has_many :companies, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  mount_uploader :logo, LogoUploader
end
