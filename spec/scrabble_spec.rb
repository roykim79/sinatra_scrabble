require 'rspec'
require 'word'

describe Word do
  describe '#scrabble' do
    it "returns a score of 1 for the letter 'a'" do
      word = Word.new('a')
      expect(word.scrabble).to eq(1)
    end
  end
end
