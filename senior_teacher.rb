require_relative 'teacher'
require_relative 'greetable'

class SeniorTeacher < Teacher
  include Greetable

  SET_RATING = 90
  TARGET_RAISE = 1000
  PHASE = 3
  RESPONSE1 = "Listen, class, this is how everything works, fo SHO! "
  RESPONSE2 = "*drops flat-out insane knowledge bomb* "
  RESPONSE3 = "... You're welcome. *saunters away*"
  TRAINING_SESSION_RESPONSE = "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
end
