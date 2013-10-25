require 'rspec'
require './lib/node'

describe Node do
  subject { described_class.new(1) }

  it { should respond_to :name }
  it { should respond_to :visited? }
  it { should respond_to :value }
  it { should respond_to :current? }
  it { should respond_to :neighbours }

  describe '#add_neighbour' do
    it 'adds the neighbour' do
      subject.add_neighbour 'fake neighbour', 10
      subject.neighbours.should eq [['fake neighbour', 10]]
    end
  end
end
