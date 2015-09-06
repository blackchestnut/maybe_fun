class Object
  def do
    yield unless nil?
    self
  end

  alias :unless_null :do
  alias :also :do

  def if_nil
    yield if nil?
    self
  end

  def with(&block)
    return self if nil?
    block.call(self)
  end
end
