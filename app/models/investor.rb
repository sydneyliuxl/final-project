# == Schema Information
#
# Table name: investors
#
#  id         :integer          not null, primary key
#  name       :string
#  dob        :date
#  image      :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Investor < ApplicationRecord
  has_many :funds, :foreign_key => "manager_id"
end
