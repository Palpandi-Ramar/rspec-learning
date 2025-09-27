require_relative "../string_utils"

RSpec.describe StringUtils do
  let(:utils) { StringUtils.new }

  it "returns true for palindrome" do
    expect(utils.palindrome?("madam")).to be true
  end

  it "returns false for non-palindrome" do
    expect(utils.palindrome?("hello")).to be false
  end
end
