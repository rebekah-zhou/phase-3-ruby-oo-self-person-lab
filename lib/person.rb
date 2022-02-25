# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        if happiness <= 0
            @happiness = 0
        elsif happiness >= 10
            @happiness = 10
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene <= 0
            @hygiene = 0
        elsif hygiene >= 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end
    end

    def clean? 
        hygiene > 7 ? true : false
    end

    def happy?
        happiness > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        'all about the benjamins'
    end

    def take_bath
        self.hygiene = (@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = (@hygiene - 3)
        self.happiness = (@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness = (friend.happiness + 3)
        self.happiness = (@happiness + 3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            friend.happiness = (friend.happiness - 2)
            self.happiness = (@happiness - 2)
            "blah blah partisan blah lobbyist"
        when "weather"
            friend.happiness = (friend.happiness + 1)
            self.happiness = (@happiness + 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end