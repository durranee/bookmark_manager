require 'link'

describe Link do
  subject(:link) { described_class.new }

  describe '#all' do

    it 'all returns an array' do
    expect(link.all).to be_an_instance_of(Array)
    end
  end

end
