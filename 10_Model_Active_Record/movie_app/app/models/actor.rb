# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  created_at :datetime
#  updated_at :datetime
#

class Actor < ActiveRecord::Base
  belongs_to :movie
end
