# == Schema Information
#
# Table name: entrepreneurs
#
#  id         :integer          not null, primary key
#  name       :string
#  bio        :text
#  dob        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :text
#

class Entrepreneur < ApplicationRecord

  has_many :projects, :foreign_key => "entrepreneur_id"
  validates :name, uniqueness: true
end
