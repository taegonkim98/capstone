class Group < ApplicationRecord
  belongs_to :user
  has_many :joined_groups
  has_many :users, through: :joined_groups
end
