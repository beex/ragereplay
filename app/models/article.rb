class Article < ActiveRecord::Base
  belongs_to :user
  has_many :mentions
  acts_as_votable 
end
