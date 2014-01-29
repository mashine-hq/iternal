class Admin::Company < ActiveRecord::Base
  belongs_to :category
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category_id, presence: true

  # serialize :phone, Array

  mount_uploader :logo, LogoUploader
end
