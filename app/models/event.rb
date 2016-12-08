class Event < ApplicationRecord
  belongs_to :user
  
  PHASE = ['Schematic Design', 'Design Development', 'Construction Documents', 'Construction Administration'].freeze
  
  attr_accessor :date_range

  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
  end
end
