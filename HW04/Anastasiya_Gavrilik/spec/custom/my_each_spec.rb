RSpec.describe Custom do
  describe 'my_each' do
    let(:arr) { [1, 2, 3] }

    before { Array.include(described_class) }

    context 'when empty block given' do
      subject { arr.my_each }

      it 'returns self' do
        expect(subject).to eq arr
      end
    end

    context 'when block given' do
      subject { arr.my_each { |el| check_arr << (el * 2) } }

      let(:check_arr) { [] }
      let(:expected_arr) { [2, 4, 6] }

      it 'block works and returns self' do
        expect(subject).to eq arr
        expect(check_arr).to eq expected_arr
      end
    end
  end
end
