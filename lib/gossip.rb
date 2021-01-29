require 'csv'
class Gossip
	attr_reader :author, :content
	def initialize(author, content)
		@content = content
		@author = author
	end

	def save
		CSV.open("gossip.csv", "a") do |csv|
			csv << [@author, @content]
		end
	end

	def self.read
		gossips = []
		csv = CSV.read("gossip.csv")
		csv.each do |line|
			gossips << Gossip.new(line[0], line[1])
		end
		return gossips
	end

	def self.delete_gossip(number)
		file = CSV.table("gossip.csv")
		file.delete(number - 1)
		File.write("gossip.csv", file.to_csv)
	end
end