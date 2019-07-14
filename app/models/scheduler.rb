class Scheduler < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :client
  belongs_to :service
  
  def fae_display_field
    date
  end

  def self.for_fae_index
    order(:id)
  end

  def open_hour(hour)
    
    if self[:date] == date
      if self[:period] == hour
        true
      else
        false
      end
    end
  end

  
end
