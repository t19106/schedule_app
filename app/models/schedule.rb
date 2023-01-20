class Schedule < ApplicationRecord
  validates :title, :start_date, :end_date, presence: true
  validates :title, length: { maximum: 20 }
  validates :memo, length: { maximum: 500 }
  validate :start_date_is_later

  private
  def start_date_is_later
    return if start_date.nil? || end_date.nil?
    if start_date > end_date
      errors.add(:start_date, "が終了日よりも遅くに始まります。")
    end
  end
end