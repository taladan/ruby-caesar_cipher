# caesar_cipher.spec
require 'rspec'
require_relative '../caesar_cipher'

describe Cipher do
  let(:cipher) { Cipher.new }
  it 'shifts alphabet characters two spaces right' do
    expect(cipher.shift('Air', 2)).to eql('Ckt')
  end
end
