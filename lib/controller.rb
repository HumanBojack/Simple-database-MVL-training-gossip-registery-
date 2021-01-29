require_relative 'gossip.rb'
require_relative 'view.rb'
class Controller
	def initialize
		@view = View.new
	end

	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params[:author],params[:content])
		gossip.save
	end

	def index_gossips
		gossips = Gossip.read
		@view.display_gossips(gossips)
	end

	def delete_gossip
		self.index_gossips
		number = @view.delete_gossip
		Gossip.delete_gossip(number)
	end

end