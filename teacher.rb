require_relative 'dbc_person'
require_relative 'greetable'

class Teacher < DbcPerson
	include Greetable
	# attr_reader :age, :salary, :phase, :performance_rating, :target_raise
 #  	attr_accessor :name

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
    response = ""
    if rating > self.class::SET_RATING
      response = "Yay, I'm a great employee!"
      receive_raise(self.class::TARGET_RAISE)
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


