require 'pry'

class Person

attr_accessor :bank_account, :hygiene
# a person instance can change his bank_account amount
attr_reader :name
#new person can't overwrite the name it was instantiated with

attr_writer :happiness

#attr_writer - ability to change

	def initialize(name)
		# initialize a new person with a name
		@name = name
		@bank_account = 25
		# a new person is initialized with a bank account of 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness
		if @happiness < 0
			self.happiness = 0
		elsif @happiness > 10
			self.happiness = 10
		else
			@happiness
		end
	end

	def hygiene
		if @hygiene < 0
			self.hygiene = 0
		elsif @hygiene > 10
			self.hygiene = 10
		else
			@hygiene
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

	def get_paid(salary)
		@bank_account += salary
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

	def start_conversation(person, topic)
		if topic == "politics"
			self.happiness -= 2
			person.happiness -= 2
			return "blah blah partisan blah lobbyist"

		elsif topic == "weather"
			self.happiness += 1
			person.happiness += 1
			return "blah blah sun blah rain"

		else topic == "other"
			"blah blah blah blah blah"
		end
	end

end