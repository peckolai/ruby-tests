require 'rspec/autorun'

def drink_allowance(age)
  drink = case age

    when 0..13
      'water'
    when 14..17
      'soda'
    when 18..20
      'beer'
    when 21..Float::INFINITY
      'rakia'
    when -Float::INFINITY..0
      print "Invalid age. Did you mean #{ age.abs }?"
      return
    else
      print "Invalid entry. Age should be a positive number."
      return
    end

    print "Allowed to drink #{ drink }"
end

describe 'drink_allowance' do
  it 'should output "Allowed to drink water" if age is under 14' do
    
    expect { drink_allowance 10 }.to output("Allowed to drink water").to_stdout
  end

  it 'should output "Allowed to drink soda" if age is under 18' do
    
    expect { drink_allowance 14 }.to output("Allowed to drink soda").to_stdout
  end

  it 'should output "Allowed to drink beer" if age is under 21' do
    
    expect { drink_allowance 18 }.to output("Allowed to drink beer").to_stdout
  end

  it 'should output "Allowed to drink rakia" if age is 21 or more' do
    
    expect { drink_allowance 21 }.to output("Allowed to drink rakia").to_stdout
  end

  it 'should output "Invalid age. Did you mean (number)?" if age is a negative number' do
    
    expect { drink_allowance -18 }.to output("Invalid age. Did you mean 18?").to_stdout
  end

  it 'should output "Invalid entry. Age should be a positive number." if age is not a number' do
    
    expect { drink_allowance [18] }.to output("Invalid entry. Age should be a positive number.").to_stdout
  end
end