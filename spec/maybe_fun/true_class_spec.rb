describe TrueClass do
  before { allow(self).to receive(:foo) }

  describe '#if_true' do
    before { true.if_true { self.foo } }
    it { expect(self).to have_received(:foo).once }
  end

  describe '#if_false' do
    before { true.if_false { self.foo } }
    it { expect(self).not_to have_received(:foo) }
  end
end
