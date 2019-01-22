require 'time'

class Event
  attr_accessor :start_date, :length, :title, :attendees
  @@all = []

  def initialize(sta=nil, len=nil, tit=nil, att=nil)
    @start_date=Time.parse(sta)
    @length=len
    @title=tit
    @attendees=att
    #puts "objet cree : #{sta}, #{len}, #{tit}, #{att}"
  end

  def self.all
    return all
  end


  def postpone_24
    @start_date = @start_date + 60 * 60 * 24
  end

  def is_past
    return (@start_date<Time.now)
  end

  def is_future
    return !self.is_past
  end

  def is_soon
    return ( ((@start_date-60*30)>Time.now) && (Time.now<(@start_date)) )
  end

  def to_s
    puts"Titre : #{@title}"
    puts"Date de debut : #{@start_date}"
    puts"Durée : #{length} minutes"
    print "Invités : "
    @attendees.each { |w| print "#{w} "}
    puts ""
  end
end


