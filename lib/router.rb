require_relative 'controller'
class Router
	def initialize
		@controller = Controller.new
	end

	def perform
		system "clear"
		loop do |variable|

			puts "\n1- Create a gossip. 2- List all gossips. 3- Delete a gossip. 4- Quit."
			choice = gets.chomp.to_i
			case choice
			when 1
				@controller.create_gossip
			when 2
				@controller.index_gossips
			when 3
				@controller.delete_gossip
				system "clear"
			when 4
				puts "Goodbye !"
				break
			else
				puts "Please enter a valid choice"
			end
		end
	end
end