# == Schema Information
#
# Table name: options
#
#  id         :integer          not null, primary key
#  fof_id     :integer
#  fund_id    :integer
#  amount     :float
#  timing     :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Option < ApplicationRecord
  belongs_to :fof
  belongs_to :fund
end
