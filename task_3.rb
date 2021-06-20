require 'rspec/autorun'

def reverse_words(str)
  str.split.map { |word| word.size.even? ? word.reverse : word }.join " "
end

describe 'reverse_words' do
  it 'should reverse every word in a given sentence if the number of its characters is even' do
    
    expect(reverse_words('this is reverse string')).to eq('siht si reverse gnirts')
  end
end