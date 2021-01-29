require_relative "../lib/view.rb"
view = View.new
describe "#create_gossip" do 
	it "returns an Hash with a newly created gossip" do
	expect(view.create_gossip.class).to eq(Hash)
	expect(view.create_gossip).to eq({:content=>"a", :author=>"a"})
end
end

describe "#delete_gossip" do 
	it "Gets an input from user and convert it to an integer" do
	expect(view.delete_gossip.class).to eq(Integer)
end
end