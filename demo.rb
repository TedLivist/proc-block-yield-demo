# This is a demonstration of Proc, Block and Yield
# Proc
module Enumerable

  def my_each(proc)
    for i in self
      proc.call i
    end
  end

end

proc = Proc.new do |i|
  puts i
end

[1,2,3,4,5].my_each(proc)   #=> displays 1, 2, 3, 4, 5 on new lines respectively
  

# Block
module Enumerable

  def my_each(&block)
    for i in self
      block.call i
    end
  end

end

[1,2,3,4,5].my_each {|n| puts n }   #=> displays 1, 2, 3, 4, 5 on new lines respectively
  

# Yield
module Enumerable

  def my_each
    for i in self
      yield i
    end
  end

end

[1,2,3,4,5].my_each {|n| puts n }   #=> displays 1, 2, 3, 4, 5 on new lines respectively
