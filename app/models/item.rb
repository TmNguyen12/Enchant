# == Schema Information
#
# Table name: items
#
#  id                 :integer          not null, primary key
#  project_id         :integer          not null
#  type               :string
#  text               :text
#  caption            :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Item < ApplicationRecord
  validates :project_id, presence: true 

  has_attached_file :image, path:"dev/:attachment/:style/:filename"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :project,
    foreign_key: :project_id, 
    primary_key: :id, 
    class_name: :Project 

    
end
