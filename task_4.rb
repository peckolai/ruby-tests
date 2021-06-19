require 'rspec/autorun'

class Search
  def find_word(word, sentence)
    arr = sentence.downcase.split

    index = arr.index word
    print index.nil? ? ("I can't find '#{word}'") : ("I found '#{word}' at position #{index + 1}")
  end
end

describe class Search
  describe '#find_word' do
    it 'outputs a message with the position of a given word in a sentence if it exists'  do
      search = Search.new

      expect { search.find_word("word", "I like word") }.to output("I found 'word' at position 3").to_stdout
    end
    it 'outputs message "I can\'t find \'word\'" if \'word\' is not in the sentence' do
      search = Search.new

      expect { search.find_word('word', 'Nothing here') }.to output("I can\'t find 'word'").to_stdout
    end
    it 'outputs a message with the position of a given word in a sentence if it exists'  do
      search = Search.new

      expect { search.find_word("cska", "I like CSKA") }.to output("I found 'cska' at position 3").to_stdout
    end
    it 'outputs message "I can\'t find \'word\'" if \'word\' is not in the sentence' do
      search = Search.new

      expect { search.find_word('ell', 'Hello there') }.to output("I can\'t find 'ell'").to_stdout
    end
  end
end
