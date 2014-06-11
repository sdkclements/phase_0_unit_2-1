#require_relative "my_solution"

def sentence_maker (array)
  sentence = ''
  sentence = array.each {|a| "#{sentence}#{a}" }.join(" ")
  #sentence = sentence.to_s
 sentence[0] = sentence[0].capitalize

  return sentence + "."
end


# describe 'sentence_maker' do
#   let(:first_sentence) {["all", "my", "socks", "are", "dirty"]}
#   let(:second_sentence) {["alaska", "has", "over", 586, "thousand", "miles"]}

#   it "is defined as a method" do
#     defined?(sentence_maker).should eq 'method'
#   end

#   it "requires a single argument" do
#     method(:sentence_maker).arity.should eq 1
#   end

#   it "returns the grammatically correct sentence of the first sentence" do
#     sentence_maker(first_sentence).should eq "All my socks are dirty."
#   end

#   it "returns the grammatically correct sentence of the second sentence" do
#     sentence_maker(second_sentence).should eq "Alaska has over 586 thousand miles."
#   end
# end

 p sentence_maker ["alaska", "has", "over", 586, "thousand", "miles"]