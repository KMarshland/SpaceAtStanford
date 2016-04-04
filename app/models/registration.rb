# == Schema Information
#
# Table name: registrations
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Registration < ActiveRecord::Base
  serialize :content, JSON

end
