# frozen_string_literal: true

# rubocop:disable Style/SymbolProc

require 'spec_helper'
require_relative 'my_module'
require_relative 'array'

RSpec.describe MyModule do
  subject(:a) { Array.new([1, 2, 3, 4]) }

  describe '#my_each' do
    it 'executes the block for each element of the array and
    returns the original array' do
      expect(a.my_each { |elem| p elem }).to eq [1, 2, 3, 4]
    end
  end

  describe '#my_select' do
    it 'executes the block for each element of the array and
    returns new array with elements for which the block condition is true' do
      expect(a.my_select { |elem| elem.even? }).to eq [2, 4]
    end
  end

  describe '#my_map' do
    it 'executes the block for each element of the array and
    returnes new array with new elements' do
      expect(a.my_map { |elem| elem * elem }).to eq [1, 4, 9, 16]
    end
  end
end
# rubocop:enable Style/SymbolProc
