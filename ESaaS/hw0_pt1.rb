=begin
Define a method sum which takes an array of integers as an argument and returns the sum of its elements. 
For an empty array it should return zero.
=end

def sum(arr_of_integers)
	arr_of_integers.inject { |sum, n| sum + n}
end

=begin
Define a method max_2_sum which takes an array of integers as an argument and returns the sum of 
its two largest elements. For an empty array it should return zero. For an array with just one element, 
it should return that element.
=end

def max_2_sum(arr_of_integers)
	new_arr = arr_of_integers.sort.reverse
	if new_arr.length == 0
		0
	elsif new_arr.length == 1
		new_arr[0]
	else
		new_arr[0] + new_arr[1]
	end
end

=begin
Define a method sum_to_n? which takes an array of integers and an additional integer, n, 
as arguments and returns true if any two distinct elements in the array of integers sum to n. 
An empty array or single element array should both return false.
=end

def sum_to_n?(arr_of_integers, n)
	if arr_of_integers.length == 0 || arr_of_integers.length == 1
		false
	else
		new_arr = arr_of_integers.combination(2).to_a
		sum_of_combination = []
		new_arr.each do |e|
			sum_of_combination << sum(e)
		end
		sum_of_combination.include?(n)
	end
end







