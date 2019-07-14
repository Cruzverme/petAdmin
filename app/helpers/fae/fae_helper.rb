module Fae
  module FaeHelper

    def one_in_one_hour(last_hour)
      hour = 6
      hours = []
      
      last_hour.times {hours << hour+= 1}
      hours_formated = hours.collect { |hour| "#{hour}:00"}
      
      hours_formated
    end

  end
end