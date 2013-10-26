require 'rspec'
require './lib/axis'

describe Axis do
  subject { described_class.new '', 1 }
  it { should respond_to :node }
  it { should respond_to :value }
end
