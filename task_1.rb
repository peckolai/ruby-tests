def to_upper_case(arr)
  arr.each {|el| el&.upcase! }
end

# to_upper_case['a', 'b']

describe 'to_upper_case' do
  it 'takes an array as argument and returns all strings in uppercase letters' do
    
    expect(to_upper_case(['a', nil, 'b', 'A'])).to eq(['A', nil, 'B', 'A'])
  end
end