require 'rspec'
require 'word'

describe Word do
  describe '#scrabble' do
    it "returns a score of 1 for the letter 'a'" do
      word = Word.new('a')
      expect(word.scrabble).to eq(1)
    end

    it("returns a score of 5 for the word 'boo'") do
      word = Word.new("boo")
      expect(word.scrabble()).to eq(5)
    end

    it("returns a scrabble score for a word regardless of case") do
      word = Word.new("oXen")
      expect(word.scrabble()).to eq(11)
    end

    it("returns a scrabble score for a word while ignoring numbers") do
      word = Word.new("1o2X4e5n")
      expect(word.scrabble()).to eq(11)
    end
  end
end
