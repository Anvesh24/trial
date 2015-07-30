class Stylo < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  mount_uploader :photo, PhotoUploader

end
