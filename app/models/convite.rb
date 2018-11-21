class Convite < ApplicationRecord
  belongs_to :inviter, class_name: "usuario", foreign_key: 'user_id'
  belongs_to :invitee, class_name: "usuario", foreign_key: 'user_id'
  belongs_to :event

end
