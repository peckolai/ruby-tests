def type_of(element)
  if (element.class == Hash) && !element.empty?
    d = {}
    element.each_pair do |key, val|
      d[type_of(key)] = type_of(val)
    end
    d
  elsif element.is_a? Array
    element.map {|e| type_of(e)}
  else
    element.class
  end
end

p type_of([["hi"], {'key'=>'value', key: 'value'}, :sym, [1, true], nil])
describe 'type_of' do
  it 'should return the class of each element in a nested structure' do
    
    expect(type_of([["hi"], {'key'=>'value', :key=>'value'}, :sym, [1, true], nil]))
      .to eq([[String], {String=>String, Symbol=>String}, Symbol, [Integer, TrueClass], NilClass])
  end
end