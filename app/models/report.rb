class Report < ApplicationRecord
  belongs_to :reporter, class_name: "User", foreign_key: 'user_id'
  belongs_to :reported, class_name: "User", foreign_key: 'user_id'
  belongs_to :event
  belongs_to :moderator

end
