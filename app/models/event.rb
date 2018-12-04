class Event < ApplicationRecord
  has_many :requests
  has_many :users, through: :participations
  has_many :participations
  has_many :ratings
  has_many :reports

  #validacoes:
  

end
