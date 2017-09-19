class User < ApplicationRecord
  has_many :wikis
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  before_save { self.email = email.downcase }
  before_save { self.role ||= :standard }
  after_create :send_user_emails

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  enum role: [:standard, :premium, :admin]


  private

  def send_user_emails
    UserMailer.new_user(self).deliver_now
  end
end
