class AddressClient < ApplicationRecord
  belongs_to :address
  belongs_to :client
end
