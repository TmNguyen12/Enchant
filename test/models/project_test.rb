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

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
