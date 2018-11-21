class Invitation < ApplicationRecord
  belongs_to :inviter, class_name: "User", foreign_key: 'user_id'
  belongs_to :invitee, class_name: "User", foreign_key: 'user_id'
  belongs_to :event

end
