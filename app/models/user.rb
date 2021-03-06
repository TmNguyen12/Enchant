# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  username           :string           not null
#  about_me           :text
#  photo              :string
#  location           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  password_digest    :string           not null
#  session_token      :string           not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  fname              :string
#  lname              :string
#

class User < ApplicationRecord

  validates :username, :password_digest, :session_token, presence: true 
  validates :username, uniqueness: true 
  validates :password, length: { minimum: 6, allow_nil: true } 
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  has_many :projects, 
    foreign_key: :author_id, 
    primary_key: :id, 
    class_name: :Project 

  has_many :likes
  has_many :comments 
  
  attr_reader :password

  after_initialize :ensure_session_token 

  def self.find_by_credentials(username, password) 
    user = User.find_by(username: username)
    return nil unless user && user.valid_password?(password)
    user 
  end 

  def password=(password)
    @password = password 
    self.password_digest = BCrypt::Password.create(password) 
  end

  def valid_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end 

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token 
  end 
  
  private
  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end 

end
