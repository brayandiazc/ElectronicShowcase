# == Schema Information
#
# Table name: products
#
#  id              :bigint           not null, primary key
#  user_id         :bigint           not null
#  name            :string
#  description     :text
#  category_id     :bigint           not null
#  price           :integer
#  release_date    :date
#  link_to_website :string
#  available       :boolean          default(TRUE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
