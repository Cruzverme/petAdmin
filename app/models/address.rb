class Address < ApplicationRecord
  include Fae::BaseModelConcern
  
  belongs_to :client

  validates :client, presence: true

  def fae_display_field
    street
  end
  
  def self.for_fae_index
    order(:id)
  end

end
