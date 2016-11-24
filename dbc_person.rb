require_relative 'greetable'

class DbcPerson
	include Greetable

	attr_reader :age, :phase
	attr_accessor :name

	def initialize(args = {})
		@age = args.fetch(:age, 0)
	    @name = args.fetch(:name, "")
	end
end