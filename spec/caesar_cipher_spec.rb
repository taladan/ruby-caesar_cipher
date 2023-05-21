# caesar_cipher.spec
require 'rspec'
require_relative '../caesar_cipher'

describe Cipher do
  describe # shift do
  it 'shifts alphabet characters two spaces right' do
    cipher = Cipher.new
    expect(cipher.shift('Air', 2)).to eql('Ckt')
  end
end
