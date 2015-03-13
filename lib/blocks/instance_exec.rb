class MyClass

  def initialize
    @x, @y = 1, 2
  end

end

obj = MyClass.new

obj.instance_exec(3) do |arg|
  puts (@x + @y) * arg
end

# 比较于instance_eval，它的功能相似，但是允许对块传参数。