# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  city       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Gallery < ActiveRecord::Base
  validates_presence_of :name 
  has_many :arts 
end
