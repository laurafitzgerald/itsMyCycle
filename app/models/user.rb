class User < ActiveRecord::Base
  
 mount_uploader :avatar, AvatarUploader
 has_many :workouts, dependent: :destroy
 #has_many :cycles, dependent: :destroy
 #has_many :runs, dependent: :destroy


 attr_accessor :remember_token


#has_many :workouts
#has_many :runs
#has_many :cycles
 has_many :runners, dependent: :destroy
 has_many :bikes, dependent: :destroy 
 
 before_save {self.email = email.downcase}

 validates :name, presence: true, length: {in: 4..30}
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true,
		 format: { with: VALID_EMAIL_REGEX },
		uniqueness: {case_sensitive: false}
 validates :password, presence: true, length: {minimum: 6}
 validates :password_confirmation, presence:true
 
 has_secure_password

 # Returns the hash digest of a string.
 
 def User.digest(string)
   cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST  : BCrypt::Engine.cost

   BCrypt::Password.create(string, cost: cost)

 end

 # Returs a random token.
 def User.new_token
    SecureRandom.urlsafe_base64
 end

 def remember
   self.remember_token = User.new_token
   update_attribute(:remember_digest, User.digest(remember_token))
 end

 #Returns true if the given token matches the digest.
 def authenticated?(remember_token)
   BCrypt::Password.new(remember_digest).is_password?(remember_token)

 end
 
 #Forgets a user
 def forget
   update_attribute(:remember_digest, nil)

 end

 def feed
 	Workout.where("user_id = ?", id)
 end
end
