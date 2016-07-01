class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tags
  has_many :events, dependent: :destroy
  has_many :campaigns, dependent: :destroy
  has_many :conversations, dependent: :destroy

end
