class Event < ApplicationRecord
  belongs_to :user
  
  PHASE = ['Admin', 'Pre-Design','Schematic Design', 'Design Development', 'Construction Documents', 'Construction Administration'].freeze
  
  attr_accessor :date_range 

  def color
  	if phase == 'Pre-Design'
  		color = 'rgba(213,127,112,0.6)'
  	elsif phase == 'Schematic Design'
  		color = 'rgba(220,185,103,0.6)'
  	elsif phase == 'Design Development'
  		color = 'rgba(134,175,73,0.6)'
  	elsif  phase =='Construction Documents'
  		color = 'rgba(184,139,172,0.6)'
  	elsif phase == 'Construction Administration'
  		color = 'rgba(129,115,151,0.6)'
  	elsif phase == 'Admin'
  		color = 'rbga(240,225,206,0.6)'
  	else
  		color = 'rgba(173,163,151,0.6)'
  	end
  end

  def duration
  	duration = (self.end - self.start)
  end

  def duration_minutes
  	duration_minutes = ((self.end - self.start)/60)
  end

  def duration_hours
  	duration_hours = ((self.end - self.start)/3600)
  end

  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
  end

  def entry_year
  	entry_year = self.end.year
  end

  def entry_month
  	entry_month = self.end.month
  end

  def entry_day
  	entry_day = self.end.day
  end

end
