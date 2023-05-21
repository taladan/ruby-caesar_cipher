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

  context 'shifts with alpha and numeric characters' do
    it 'shifts only alphabet characters two spaces right' do
      expect(cipher.shift('A12ir', 2)).to eql('C12kt')
    end

    it 'shifts only alphabet characters two spaces left' do
      expect(cipher.shift('A12ir', -2)).to eql('Y12gp')
    end
  end
end
