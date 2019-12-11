class Person
    attr_reader :name, :hygiene , :happiness
    attr_accessor :bank_account
    
    def initialize (name,bank_account = 25,happiness = 8,hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness=(happiness)
        @happiness = happiness
        if @happiness < 0 
            @happiness = 0
        elsif
            @happiness > 10
            @happiness = 10
       
        end
    end

def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene < 0 
        @hygiene = 0
    elsif
        @hygiene > 10
        @hygiene = 10
    end
end

    def happy?
        if @happiness  > 7 && @happiness <= 10
            return true
        else
            return false

    end
end

    def clean?
        if @hygiene >7  && @hygiene <= 10
            return true
        else
             return false
        
     end
    end
    def get_paid(salary_amount)
       self.bank_account = salary_amount + @bank_account
       
        return "all about the benjamins"
    end
    def take_bath
         self.hygiene +=4
        return  "♪ Rub-a-dub just relaxing in the tub ♫"
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
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -=2
            person.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
             return "blah blah sun blah rain"
        else topic != "policits" && topic != "weather"
            return "blah blah blah blah blah"


        end
    
    end

    





end

