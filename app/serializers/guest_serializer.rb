class GuestSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address
end
