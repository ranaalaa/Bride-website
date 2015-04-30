class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :ratings 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         devise :omniauthable, :omniauth_providers => [:facebook]
         def self.from_omniauth(auth)
         	
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.encrypted_password = Devise.friendly_token[0,20]
    user.username = auth.info.name
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


