require_relative 'fixed_array'

class ArrayList

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
		if index <= (@arr.length-1)
      return @arr[index]
    else
      raise OutOfBoundException, "You cant do that"
    end
	end

	def set(index, element)
		 if index <= (@arr.length-1)
      @arr[index] = element
    else
      raise OutOfBoundException, "You cant do that"
    end
	end

	def length
		@arr.length
	end

end

al = ArrayList.new(3)
p al
p al.add(4)
p al
