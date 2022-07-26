# your code goes here

require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
       if value >= 10
            @happiness = 10
       elsif value > 0
            @happiness = value
       else
            @happiness = 0
       end
    end

    def hygiene=(value)
       if value >= 10
            @hygiene = 10
       elsif value > 0
            @hygiene = value
       else
            @hygiene = 0
       end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def clean? 
        if self.hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(self.hygiene+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(self.happiness + 2)
        self.hygiene=(self.hygiene-3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(self.happiness + 3)
        friend.happiness=(friend.happiness+3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        if topic == "politics"
            friend.happiness=(friend.happiness -  2)
            self.happiness=(self.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather" 
            friend.happiness=(friend.happiness +  1)
            self.happiness=(self.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end           
    end

end