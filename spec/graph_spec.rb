require 'rspec'
require './lib/graph'

describe Graph do
  describe '#initialize' do
    subject { described_class.new [] }
    it { should respond_to :nodes }
  end
end
