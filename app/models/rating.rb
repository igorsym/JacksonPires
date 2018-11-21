class Rating < ApplicationRecord
  belongs_to :rater, class_name: "User", foreign_key: 'user_id'
  belongs_to :rated, class_name: "User", foreign_key: 'user_id'
  belongs_to :event

end
