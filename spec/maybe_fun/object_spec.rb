describe Object do
  before { allow(self).to receive(:foo) }

  describe '#do' do
    subject { object.do { self.foo } }
    before { subject }

    context 'not nil' do
      let(:object) { Object.new }
      it { expect(self).to have_received(:foo).once }
    end

    context 'nil' do
      let(:object) { nil }
      it { expect(self).not_to have_received(:foo) }
    end
  end

  describe '#if_nil' do
    subject { object.if_nil { self.foo } }
    before { subject }

    context 'not nil' do
      let(:object) { Object.new }
      it { expect(self).not_to have_received(:foo) }
    end

    context 'nil' do
      let(:object) { nil }
      it { expect(self).to have_received(:foo).once }
    end
  end

  describe '#with' do
    subject { object.with(&:field) }

    context 'not nil' do
      let(:object) { double(field: 'test') }
      it { is_expected.to eq 'test' }
    end

    context 'nil' do
      let(:object) { nil }
      it { is_expected.to be_nil }
    end
  end
end
