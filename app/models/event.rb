class Event < ApplicationRecord
  has_many :requests
  has_many :users, through: :participations
  has_many :participations
  has_many :ratings
  has_many :reports
  has_many :invitations

  #validacoes:
  validates_presence_of :name
  validates_presence_of :sport
  validates_presence_of :event_date
  validates_presence_of :start_time
  validates_presence_of :end_time
  validates_presence_of :frequency
  validates_presence_of :place
  validate :dates_ok

  def dates_ok
    if start_time.present? && end_time.present? && start_time>=end_time
      errors.add(:end_time, "must be after start time")
    end
  end

end
