class Report < ApplicationRecord
  belongs_to :reporter, :class_name => "User"
  belongs_to :reportee, :class_name => "User"
  belongs_to :event
  belongs_to :moderator

end
