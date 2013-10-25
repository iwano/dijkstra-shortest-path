class Path
  attr_accessor :from, :to, :value

  def initialize(from, to, value)
    @from  = from
    @to    = to
    @value = value
  end
end
