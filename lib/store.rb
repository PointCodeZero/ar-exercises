class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 } 
  validates :annual_revenue, presence: true, length: {minimum: 0}, numericality: { only_integer: true }
end
