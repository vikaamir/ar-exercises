require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ApplicationRecord
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end


class Store < ApplicationRecord
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_apparel

  private

  def must_carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, "must carry at least one of men's or women's apparel")
      errors.add(:womens_apparel, "must carry at least one of men's or women's apparel")
    end
  end
end

store_name = params[:store_name]


if new_store.save
  # Store creation successful
else
  # Store creation failed; display error messages
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
