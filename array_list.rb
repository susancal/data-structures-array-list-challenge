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

	end

	def set(index, element)

	end

end

al = ArrayList.new(3)
p al
