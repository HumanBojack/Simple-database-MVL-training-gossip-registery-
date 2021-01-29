class View

	def create_gossip
		system "clear"
		print "Enter the gossip : "
		content = gets.chomp
		system "clear"
		print "Enter your name : "
		author = gets.chomp
		return {content: content, author: author}
	end

	def display_gossips(gossips)
		system "clear"
		gossips.size.times do |i|
			puts "#{i}- #{gossips[i].author} | #{gossips[i].content}"
		end
	end

	def delete_gossip
		puts "Which one would you like to delete ?"
		print "> "
		return gets.chomp.to_i
	end

end