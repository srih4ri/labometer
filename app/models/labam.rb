class Labam < ActiveRecord::Base
  belongs_to :user
  validates_numericality_of :amount
  validates_presence_of :amount
end
