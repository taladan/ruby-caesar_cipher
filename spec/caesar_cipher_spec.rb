# caesar_cipher.spec
require 'rspec'
require_relative '../caesar_cipher'

describe Cipher do
  let(:cipher) { Cipher.new }

  context 'shifts with only alpha characters' do
    it 'shifts alphabet characters two spaces right' do
      expect(cipher.shift('Air', 2)).to eql('Ckt')
    end

    it 'shifts alphabet characters two spaces left' do
      expect(cipher.shift('Air', -2)).to eql('Ygp')
    end
  end
end
