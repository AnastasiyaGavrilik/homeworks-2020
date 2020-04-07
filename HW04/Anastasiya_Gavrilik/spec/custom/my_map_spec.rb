RSpec.describe Custom do
  describe 'my_map' do
    let(:arr) { [1, 2, 3] }

    before { Array.include(described_class) }

    context 'when empty block given' do
      subject { arr.my_map }

      it 'returns self' do
        expect(subject).to eq arr
      end
    end

    context 'when block given' do
      subject { arr.my_map { |el| el * 2 } }

      let(:expected_arr) { [2, 4, 6] }

      it 'returns mapped array' do
        expect(subject).to eq expected_arr
      end
    end
  end
end
