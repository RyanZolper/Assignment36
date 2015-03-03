# == Schema Information
#
# Table name: models
#
#  id          :integer          not null, primary key
#  name        :string
#  start_price :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer
#

require 'test_helper'

class ModelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
