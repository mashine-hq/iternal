class Company < ActiveRecord::Base
  belongs_to :category
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
  mount_uploader :logo, LogoUploader
end
