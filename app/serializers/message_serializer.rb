class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user, :text
end
