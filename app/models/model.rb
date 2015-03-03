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

class Model < ActiveRecord::Base
  belongs_to :company, inverse_of: :models
  has_many :configurations, dependent: :destroy
end
