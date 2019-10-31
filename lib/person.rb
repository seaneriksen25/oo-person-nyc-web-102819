# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :amount, :bank_account

    def initialize(name)
        @name = name
        @amount = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account
        @amount
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value <0
            @happiness = 0
        elsif value <= 10 && value >= 0
            @happiness = value
        end
    end
    
    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value <0
            @hygiene = 0
        elsif value <= 10 && value >= 0
            @hygiene = value
        end
    end

    def happy?
        if @happiness > 7
            return true
            else 
                return false
        end
    end

        def clean?
            if @hygiene > 7
                return true
            else 
                return false
            end
        end

        def get_paid(num)
            @amount += num
            return "all about the benjamins"

        end

        def take_bath

            self.hygiene += 4
            return "♪ Rub-a-dub just relaxing in the tub ♫"
        end

        def work_out
            self.happiness += 2
            self.hygiene -= 3
            return "♪ another one bites the dust ♫"
        end

        def call_friend(friend)
            self.happiness += 3
            friend.happiness += 3

            return "Hi #{friend.name}! It's #{self.name}. How are you?"

        end

        def start_conversation(friend, topic)
            if topic == "politics"
                self.happiness -= 2
                friend.happiness -= 2
                return "blah blah partisan blah lobbyist"

            elsif topic == "weather"
                self.happiness += 1
                friend.happiness += 1
                return "blah blah sun blah rain"

            else 
                "blah blah blah blah blah"
            end

        end
    end

