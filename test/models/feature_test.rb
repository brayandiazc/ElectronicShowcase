# == Schema Information
#
# Table name: features
#
#  id         :bigint           not null, primary key
#  name       :string
#  available  :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class FeatureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
