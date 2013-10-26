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
      subject.add_neighbour 'fake neighbour'
      subject.neighbours.should eq ['fake neighbour']
    end
  end

  describe '#reset_value' do
    it 'sets the value to infinity' do
      subject.value = 1234
      subject.reset_value.should eq +1.0/0.0
    end
  end
end
