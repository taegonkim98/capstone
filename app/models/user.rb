class User < ApplicationRecord
  has_many :owned_groups, class_name: "Group"
  has_many :joined_groups
  has_many :groups, through: :joined_groups
end
