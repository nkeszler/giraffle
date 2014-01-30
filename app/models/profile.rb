class Profile < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: {large: "500x500>", medium: "300x300>", thumb: "75x75>"}
end
