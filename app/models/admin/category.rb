class Admin::Category < ActiveRecord::Base
  has_many :companies
  validates :title, presence: true, uniqueness: true
end
