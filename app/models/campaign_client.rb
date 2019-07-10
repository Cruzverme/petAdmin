class CampaignClient < ApplicationRecord
  belongs_to :campaign
  belongs_to :client

  has_many :campaign_clients
  has_many :clients, through: :campaign_clients
end
