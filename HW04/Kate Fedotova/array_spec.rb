require 'rspec'
require 'rubocop-rspec'
require_relative 'arr.rb'
# rubocop:disable Metrics/BlockLength
describe Array do
  describe '#my_each' do
    subject(:arr) { [1, 2, 3, 4] }

    context 'when has block' do
      it 'return arr items +1' do
        new_arr = []
        arr.my_select { |el| new_arr << el }
        expect(new_arr).to eq([1, 2, 3, 4])
      end
    end
  end

  describe '#my_map' do
    subject(:arr) { [1, 2, 3, 4] }

    context 'when has block' do
      it 'return arr items +1' do
        expect(arr.my_map { |el| el + 1 }).to eq([2, 3, 4, 5])
      end
    end

    context 'when without block' do
      it 'return arr items +1' do
        expect(arr.my_select).to be_an_instance_of(Enumerator)
      end
    end
  end

  describe '#my_select' do
    subject(:arr) { [1, 2, 3, 4] }

    context 'when has block' do
      it 'return arr items +1' do
        expect(arr.my_select { |el| el >= 2 }).to eq([2, 3, 4])
      end
    end

    context 'when without block' do
      it 'return arr items +1' do
        expect(arr.my_select).to be_an_instance_of(Enumerator)
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
