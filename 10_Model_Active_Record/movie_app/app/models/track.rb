# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  track_link :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Track < ActiveRecord::Base
  belongs_to :artist
end
