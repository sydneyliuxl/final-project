# == Schema Information
#
# Table name: managers
#
#  id         :integer          not null, primary key
#  name       :string
#  dob        :date
#  image      :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Manager < ApplicationRecord
  has_many :funds, :foreign_key => "manager_id"
  validates :name, uniqueness: true
end
