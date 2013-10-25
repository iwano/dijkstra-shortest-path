require 'rspec'
require './lib/node'

describe Node do
  describe '#initialize' do
    subject { described_class.new(1) }

    it { should respond_to :name }
    it { should respond_to :visited? }
    it { should respond_to :current? }

  end
end
