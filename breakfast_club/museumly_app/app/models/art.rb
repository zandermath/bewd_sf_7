# == Schema Information
#
# Table name: arts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  available  :boolean
#  artist_id  :integer
#  gallery_id :integer
#  price      :integer
#  created_at :datetime
#  updated_at :datetime
#  art_image  :string(255)
#

class Art < ActiveRecord::Base
  belongs_to :artist
  belongs_to :gallery
end
