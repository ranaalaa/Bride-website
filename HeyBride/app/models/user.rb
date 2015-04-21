class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :ratings 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         devise :omniauthable, :omniauth_providers => [:facebook]
         def self.from_omniauth(auth)
  validates :username, presence: true
  validates :username, uniqueness: true, if: -> { self.username.present? }
         	
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.encrypted_password = Devise.friendly_token[0,20]
  end
end

         def self.from_ominauth(auth)
         	where(auth.slice(:provider, :uid)).first_or_create do |user|
         		user.provider=auth.provider
         		user.uid = auth.uid
         		user.username= auth.info.nackname
         	end 
         end
         		def self.new_with_session(params, session)
         			if session["devise.user.attributes"]
         				new(sesstion["devise.user.attributes"], without_protection: true) do |user|
         					user.attributes = params
         					user.valid?
         					end
  
         				else
         					super

         	end
         end
         def password_required?
         	super && provider.blank?
         end
    end 


