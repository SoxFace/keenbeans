# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  about      :text
#  twitter    :string
#  linkedin   :string
#  facebook   :string
#  github     :string
#  site       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address    :string
#

class User < ActiveRecord::Base
  has_many :memberships
  has_many :groups, through: :memberships

  acts_as_taggable_on :interests
  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
