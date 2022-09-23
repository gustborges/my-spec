# MySpec

We are going to build our own RSpec-like test framework called MySpec. The idea is to be able to use something like this without using RSpec:

```
require_relative './my_spec'

def emphasize(text)
  "#{text.upcase}!"
end

# Above this line is the "application code"
# and below this line is the test code
# -----------------------------------------

MySpec.describe 'emphasizing text' do
  it 'makes the text uppercase and adds an exclamation point' do
    expect(emphasize('hello')).to eq('HELLO!')
  end
end

```
