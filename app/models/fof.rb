# == Schema Information
#
# Table name: fofs
#
#  id         :integer          not null, primary key
#  name       :string
#  scale      :string
#  expiration :date
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fof < ApplicationRecord
  belongs_to :user
  
  has_many :options
  has_many :funds, :through => :options, :source => :fund
  
  validates :name, :scale, :expiration, presence: true
  
end
