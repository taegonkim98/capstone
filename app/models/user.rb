class User < ApplicationRecord
  has_many :owned_groups, class_name: "Group"
  has_many :joined_groups
  has_many :groups, through: :joined_groups
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
