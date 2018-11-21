class User < ApplicationRecord

  #validacoes:
  validates_presence_of :name
  validates_presence_of :username
  validates_presence_of :email
  validates_presence_of :phone
  validates_length_of :phone, is: 11
  validates_presence_of :birth_date
  validates_presence_of :password,
  message: "must provided so we can recognize you"
  validates_length_of :password, in: 6..24
  validates_format_of :password, with: /[0-9]/,
  message: "must contain at least one number"
  validates_format_of :password, with: /[A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,Y,X,Z]/,
  message: "must contain at least one upper case"
  validates_format_of :password, with: /[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,y,x,z]/,
  message: "must contain at least one lower case"
  validates_uniqueness_of :email, case_sensitive: false,
  message: "has already been entered"
  #validacao do gender
  #validacao do formato do email

  #associacoes:
  has_many :invitations_made, class_name: "Invitation", inverse_of: 'inviter'
  has_many :invitarions_received, class_name: "Invitation", inverse_of: 'invitee'
  has_many :ratings_made, class_name: "Rating", inverse_of: 'rater'
  has_many :ratings_received, class_name: "Rating", inverse_of: 'rated'
  has_many :reports_made, class_name: "Report", inverse_of: 'reporter'
  has_many :reports_received, class_name: "Report", inverse_of: 'reported'
  has_many :requests
  has_many :events, through: :participations
  has_many :participations
  has_one :ban

end
