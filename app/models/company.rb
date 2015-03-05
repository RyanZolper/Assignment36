# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  logo       :string
#  user_id    :integer
#

class Company < ActiveRecord::Base
  belongs_to :user, inverse_of: :companies
  has_many :models, dependent: :destroy
  mount_uploader :logo, LogoUploader
  scope :best, -> { where(country: 'germany')}
  scope :domestic, -> { where(country: 'usa')}

end
