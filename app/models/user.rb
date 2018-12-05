class User < ApplicationRecord
  has_secure_password
  after_save :store_photo
  #validacoes:
  validates_presence_of :name
  validates_presence_of :username
  validates_presence_of :email
  validates_presence_of :phone
  validates_length_of :phone, is: 11
  validates_presence_of :birth_date
  validates_presence_of :password,
  message: "must be provided so we can recognize you"
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
  has_many :ratings_made, :class_name => "Rating", :foreign_key => 'rater_id'
  has_many :ratings_received, :class_name => "Rating", :foreign_key => 'rated_id'

  has_many :reports_made, class_name: "Report", inverse_of: 'reporter'
  has_many :reports_received, class_name: "Report", inverse_of: 'reported'
  has_many :requests
  has_many :events, through: :participations
  has_many :participations
  has_one :ban

  def photo=(file_data)
    unless file_data.blank?
      @file_data = file_data
      self.extension = file_data.original_filename.split('.').last.
            downcase
    end
  end


  PHOTO_STORE = File.join Rails.root, 'public', 'photo_store'
  def photo_path
    "/photo_store/#{id}.#{extension}"
  end

  def photo_filename
    File.join PHOTO_STORE, "#{id}.#{extension}"
  end

  def has_photo?
    File.exists? photo_filename
  end

  private


  def store_photo
    if @file_data
      FileUtils.mkdir_p PHOTO_STORE
      File.open(photo_filename, "wb") do |f|
        f.write(@file_data.read)
      end
      @file_data = nil
    end
  end




end
