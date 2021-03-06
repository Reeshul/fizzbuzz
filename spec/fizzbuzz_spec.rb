require 'fizzbuzz'
describe 'fizzbuzz' do
  it 'returns "fizz" when passed a multiple of 3 that isn\'t a multple of 5' do
    # Generate a random multiple of 3
    test_input_3 = (rand(6) + 1) * 3

    # For this multiple of 3, run the test
    while true do
      break if test_input_3 % 15 != 0
      test_input_3 = (rand(6) + 1) * 3
    end
    expect(fizzbuzz(test_input_3)).to eq 'fizz'
  end

  it 'returns "fizzbuzz" when a multiple of 15 is passed' do
    # generate multiple of 15
    test_input_15 = (rand(6) + 1) * 15
    # check this is .to eq 15
    expect(fizzbuzz(test_input_15)).to eq 'fizzbuzz'
  end

  it 'returns "buzz" when a multiple of 5 that isn\'t a multiple of 3 is passed' do
    # Generate a random multiple of 5
    test_input_5 = (rand(6) + 1) * 5

    # For this multiple of 5, run the test
    while true do
      break if test_input_5 % 15 != 0
      test_input_5 = (rand(6) + 1) * 5
    end
    expect(fizzbuzz(test_input_5)).to eq 'buzz'
  end

  it 'returns the number when passed a number that isn\'t a multiple of 3 or 5' do
    test_input_other = rand(50) + 1
    while true do
      break if test_input_other % 5 != 0 || test_input_other % 3 != 0
      test_input_other = rand(50) + 1
    end
    expect(fizzbuzz(test_input_other)).to eq test_input_other
  end
end
