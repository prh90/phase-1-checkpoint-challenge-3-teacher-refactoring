require_relative 'dbc_person'
require_relative 'greetable'

class Teacher < DbcPerson
	include Greetable

  class NoMethodError < StandardError
  end

	# attr_reader :age, :salary, :phase, :performance_rating, :target_raise
 #   	attr_accessor :name

	# def initialize
	# 	super
	# 	@target_raise = self.class::TARGET_RAISE
	# end

 # I could set initialize here and set everything up like 
 # @target_raise = self.class:Target_raise

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    response = ""
    response += self.class::RESPONSE1
    response += self.class::RESPONSE2
    response += self.class::RESPONSE3
    response
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
  	raise NoMethodError, "User Teacher does not have performance rating available because Teacher has no rating" unless rating != ""

    response = ""
    if rating > self.class::SET_RATING
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise||self.class::TARGET_RAISE)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

  def lead_training_session
    puts self.class::TRAINING_SESSION_RESPONSE
  end

end


