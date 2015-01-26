# == Schema Information
#
# Table name: artists
#
#  id              :integer          not null, primary key
#  name            :string
#  profile_image   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  record_label_id :integer
#

class Artist < ActiveRecord::Base
  belongs_to :record_label
  has_many :tracks
  validates_presence_of :record_label, :name
  validates_uniqueness_of :name, {case_sensitive: false}
end
