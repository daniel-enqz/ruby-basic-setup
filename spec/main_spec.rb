require 'main'

describe 'hello_world' do
  it 'outputs "Hello, world!"' do
    expect { hello_world }.to output("Hello, world!\n").to_stdout
  end

  it 'is defined as a method' do
    expect(method(:hello_world)).to be_a Method
  end
end
