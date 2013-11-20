class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_many :authentications
 has_many :notes, dependent: :destroy
 has_many :measures, dependent: :destroy
  accepts_nested_attributes_for :notes
 has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile 
 has_one :healthpro, dependent: :destroy
  accepts_nested_attributes_for :healthpro 

 before_create :create_profile

  include Gravtastic
  is_gravtastic!

 def create_profile
	self.profile = Profile.new(:user_id => self.id)
 end

 def twitter_client
    authentications.where(provider: "twitter").first.twitter_client
 end

 def withings_client
    authentications.where(provider: "withings").first.withings_client
 end
end
