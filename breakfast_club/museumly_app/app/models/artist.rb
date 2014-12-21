# == Schema Information
#
# Table name: artists
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  age          :integer
#  art_category :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Artist < ActiveRecord::Base
  has_many :arts
end
