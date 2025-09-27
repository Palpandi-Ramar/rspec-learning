# rspec-learning
# 🧪 RSpec Matchers Cheat Sheet (All-in-One Example)

This file demonstrates **all common RSpec matchers** in a single example block.  
You can use it as a reference or include it in your GitHub README.

```ruby
RSpec.describe "RSpec Matchers All-in-One" do
  it "demonstrates common matchers" do
    # eq → value equality
    expect(2 + 2).to eq(4)
    expect([1,2]).to eq([1,2])
    expect([1,2]).not_to eq([2,1])

    # eql → strict equality (value + type)
    expect(5).to eql(5)
    expect(5).not_to eql(5.0)
    expect("ruby").to eql("ruby")
    expect([1,2]).to eql([1,2])

    # equal / be → object identity
    a = "ruby"
    b = a
    c = "ruby"
    expect(a).to equal(b)
    expect(a).not_to equal(c)
    expect(a).to be(b)
    expect(a).not_to be(c)

    # be → truthy, falsy, or nil
    expect(true).to be true
    expect(false).to be false
    expect(nil).to be_nil
    expect(5 > 3).to be_truthy
    expect(nil).to be_falsey

    # Numeric comparisons
    expect(10).to be > 5
    expect(5).to be <= 5
    expect(7).to be < 10
    expect(3).to be >= 3

    # include → collection membership
    expect([1, 2, 3]).to include(2)
    expect([1, 2, 3]).not_to include(5)
    expect({a: 1, b: 2}).to include(:a)
    expect("hello world").to include("world")

    # match → regex/string
    expect("ruby on rails").to match(/rails/)
    expect("abc123").to match(/\d+/)
    expect("hello").not_to match(/world/)

    # raise_error → exception handling
    expect { 1/0 }.to raise_error(ZeroDivisionError)
    expect { raise "oops" }.to raise_error(RuntimeError, "oops")
    expect { [].fetch(1) }.to raise_error(IndexError)

    # change → detect state changes
    arr = []
    expect { arr << 1 }.to change { arr.size }.by(1)
    expect { arr.clear }.to change { arr.empty? }.from(false).to(true)
    count = 0
    expect { count += 2 }.to change { count }.from(0).to(2)

    # be_instance_of → exact class match
    expect("ruby").to be_instance_of(String)
    expect(5).to be_instance_of(Integer)
    expect([1,2]).not_to be_instance_of(Hash)

    # be_kind_of / be_a → inheritance/type
    expect("ruby").to be_a(String)
    expect("ruby").to be_kind_of(Object)
    expect(5).to be_kind_of(Numeric)
    expect([1,2]).to be_a(Array)

    # respond_to → method existence
    expect("hello").to respond_to(:upcase)
    expect([1, 2, 3]).to respond_to(:each)
    expect({a:1}).not_to respond_to(:upcase)

    # satisfy → custom conditions
    expect(10).to satisfy { |v| v % 2 == 0 }
    expect(7).not_to satisfy { |v| v % 2 == 0 }
    expect("ruby").to satisfy { |s| s.length > 3 }

    # all → apply matcher to all elements
    expect([2, 4, 6]).to all(be_even)
    expect([2, 4, 6]).not_to all(be_odd)
    expect(%w[ruby rails rspec]).to all(be_a(String))

    # contain_exactly → match collection ignoring order
    expect([1, 2, 3]).to contain_exactly(3, 2, 1)
    expect(%w[a b c]).not_to contain_exactly('a','b')
    expect([:x, :y]).to contain_exactly(:y, :x)
  end
end
