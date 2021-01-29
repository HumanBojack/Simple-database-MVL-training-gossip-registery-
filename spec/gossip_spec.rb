require_relative "../lib/gossip.rb"

describe "#self_read" do 
	it "returns an array with gossips" do
	expect(Gossip.read.class).to eq(Array)
end
end