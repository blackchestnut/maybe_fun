describe FalseClass do
  before { allow(self).to receive(:foo) }

  describe '#if_true' do
    before { false.if_true { self.foo } }
    it { expect(self).not_to have_received(:foo) }
  end

  describe '#if_false' do
    before { false.if_false { self.foo } }
    it { expect(self).to have_received(:foo).once }
  end
end
