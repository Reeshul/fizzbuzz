require 'fizzbuzz'
describe 'fizzbuzz' do
  it 'returns "fizz" when passed a multiple of 3 that isn\'t a multple of 5' do
    # Generate a random multiple of 3
    test_input = (rand(6) + 1) * 3

    # For this multiple of 3, run the test
    while true do
      break if test_input % 15 != 0
      test_input = (rand(6) + 1) * 3
    end
    expect(fizzbuzz(test_input)).to eq 'fizz'
  end

  # it 'returns "fizzbuzz" when a multiple of 15 is passed' do
  #   # generate multiple of 15
  #   # check this is .to eq 15
  # end
  #
  # it 'returns "buzz" when a multiple of 5 that isn\'t a multiple of 3 is passed' do
  #
  # end
  #
  # it 'returns the number when passed a number that isn\'t a multiple of 3 or 5' do
# end
end
