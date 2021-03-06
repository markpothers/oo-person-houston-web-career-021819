require 'rb-readline'
require 'pry'

class Person
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    @happiness = value
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(value)
    @hygiene = value
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def bank_account=(value)
    @bank_account = value
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def bank_account
    @bank_account
  end

  def name
    @name
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(amount)
    @bank_account = @bank_account + amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(@happiness + 2)
    self.hygiene=(@hygiene - 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(@happiness + 3)
    friend.happiness=(friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness=(@happiness - 2) 
      friend.happiness=(friend.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(@happiness + 1)
      friend.happiness=(friend.happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end

steven = Person.new("Steven")

#binding.pry
puts "finished"