class Mention < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  acts_as_votable 
end
