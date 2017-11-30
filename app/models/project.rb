# == Schema Information
#
# Table name: projects
#
#  id                    :integer          not null, primary key
#  title                 :string           not null
#  description           :text
#  category              :string
#  thumbnail_url         :string
#  video                 :string
#  author_id             :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  liked_by_current_user :boolean
#

class Project < ApplicationRecord
  validates :author_id, presence: true 
  validates :title, presence: true, uniqueness: true

  belongs_to :user, 
    foreign_key: :author_id,
    primary_key: :id,  
    class_name: :User 

  has_many :items, 
    foreign_key: :project_id, 
    primary_key: :id, 
    class_name: :Item 
  
  has_many :likes 
  has_many :comments 

end
