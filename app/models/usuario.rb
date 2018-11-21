class Usuario < ApplicationRecord

  #validacoes

  validates_presence_of :name
  validates_presence_of :apelido
  validates_presence_of :email
  validates_presence_of :celular
  validates_length_of :celular, is: 11
  validates_presence_of :nascimento
  validates_presence_of :sexo
  validates_presence_of :senha,
  message: "must provided so we can recognize you"
  validates_length_of :senha, in: 6..24
  validates_format_of :senha, with: /[0-9]/,
  message: "must contain at least one number"
  validates_format_of :senha, with: /[A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,Y,X,Z]/,
  message: "must contain at least one upper case"
  validates_format_of :senha, with: /[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,y,x,z]/,
  message: "must contain at least one lower case"
  #validates_format_of :email, with: /\A([^@\s]+)@((?:[−a−z0−9]+\.)+[a−z]{2,})\Z/i,
  #message: "doesn't look like a proper email address"
  validates_uniqueness_of :email, case_sensitive: false,
  message: "has already been entered"

  #associacoes

  has_many :invitations_made, class_name: "convite", inverse_of: 'inviter'
  has_many :invitations_received, class_name: "convite", inverse_of: 'invitee'
  has_many :ratings_made, class_name: "avaliacao", inverse_of: 'rater'
  has_many :ratings_received, class_name: "avaliacao", inverse_of: 'rated'
  has_many :reports_made, class_name: "denuncia", inverse_of: 'reporter'
  has_many :reports_received, class_name: "denuncia", inverse_of: 'reported'
  has_many :solicitacaos
  has_many :eventos, through: :participacaos
  has_many :participacaos
  has_one :banido



end
