require_relative 'fixed_array'

class ArrayList
  attr_reader :arr

	def initialize(size)
		@arr = FixedArray.new(size).arr
	end

	class OutOfBoundException < StandardError
  end

	def add(element)
		fa = FixedArray.new(1)
		fa.set(0, element)
		@arr = @arr + fa.arr
		element
	end

	def get(index)
		if inbounds?(index)
      return @arr[index]
    else
      raise OutOfBoundException, "You cant do that"
    end
	end

	def set(index, element)
		 if inbounds?(index)
      @arr[index] = element
      return element
    else
      raise OutOfBoundException, "You cant do that"
    end
	end

  def inbounds?(index)
    index <= (@arr.length-1)
  end

	def length
		@arr.length
	end

end

al = ArrayList.new(3)
p al
p al.add(4)
p al
p al.set(0, 1)
p al.length
