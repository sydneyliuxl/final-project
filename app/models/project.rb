# == Schema Information
#
# Table name: projects
#
#  id              :integer          not null, primary key
#  name            :string
#  entrepreneur_id :integer
#  industry        :string
#  business        :text
#  location        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Project < ApplicationRecord
  
  has_many :investments, :dependent => :destroy
  belongs_to :entrepreneur
  has_many :funds, :through => :investments, :source => :fund
end
