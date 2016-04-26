class Array
  def bubblesort1
    length.times do |j|
      for i in 1...(length - j)
        if self[i] < self[i - 1]
          self[i], self[i - 1] = self[i - 1], self[i]
        end
      end
    end
    self
  end

   def bubblesort2
    each_index do |index|
      (length - 1).downto( index ) do |i|
        self[i-1], self[i] = self[i], self[i-1] if self[i-1] < self[i]
      end
    end
    self
  end
end
 
# expect it to return 42 below
result = [2, 42, 22, 02]
result.bubblesort2
puts "max of 2, 42, 22, 02 is: #{result[0]}"

# expect it to return 2 below
result2 = [2, 42, 22, 02]
result2.bubblesort1
puts "min of 2, 42, 22, 02 is: #{result2[0]}"


result3 = []
result3.bubblesort1
puts "min on empty set is: #{result3[0].inspect}"
 
result4 = -23, 0, -3
result4.bubblesort2
puts "max of -23, 0, -3 is: #{result4[0]}"
 
result5 = [6]
result5.bubblesort2
puts "max of just 6 is: #{result5[0]}"