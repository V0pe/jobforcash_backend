class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :laborer

  validates :start_date, presence: true
  validates :number_days, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 30 }
  validate :valid_date

  private

  def valid_date
    errors.add(:start_date, "must be at least #{Date.today + 1}") unless start_date >= Date.today + 1
  end
end
