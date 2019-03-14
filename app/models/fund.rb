# == Schema Information
#
# Table name: funds
#
#  id         :integer          not null, primary key
#  name       :string
#  duration   :string
#  field      :string
#  stage      :string
#  manager_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fund < ApplicationRecord
  belongs_to :manager, :class_name => "Manager"
  has_many :investments
  has_many :projects, :through => :investments, :source => :project
  
  has_many :options
  has_many :foves, :through => :options, :source => :fof
  
end
