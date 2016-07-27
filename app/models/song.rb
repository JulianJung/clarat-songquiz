class Song < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true
  
  belongs_to :user
end
