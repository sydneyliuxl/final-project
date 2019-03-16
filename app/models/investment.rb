# == Schema Information
#
# Table name: investments
#
#  id         :integer          not null, primary key
#  fund_id    :integer
#  project_id :integer
#  amount     :float
#  round      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Investment < ApplicationRecord
  belongs_to :fund
  belongs_to :project

end


