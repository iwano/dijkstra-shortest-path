require 'rspec'
require './lib/path'

describe Path do
  subject { described_class.new(1,2,3) }
  it { should respond_to :from }
  it { should respond_to :to }
  it { should respond_to :value }
end
