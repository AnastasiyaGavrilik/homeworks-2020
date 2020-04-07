RSpec.describe Custom do
  describe 'my_select' do
    let(:arr) { [1, 2, 3] }

    before { Array.include(described_class) }

    context 'when empty block given' do
      subject { arr.my_select }

      it 'returns self' do
        expect(subject).to eq arr
      end
    end

    context 'when block given' do
      subject { arr.my_select(&:odd?) }

      let(:expected_arr) { [1, 3] }

      it 'returns selected array' do
        expect(subject).to eq expected_arr
      end
    end
  end
end
