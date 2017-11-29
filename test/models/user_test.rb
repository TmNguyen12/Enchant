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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
