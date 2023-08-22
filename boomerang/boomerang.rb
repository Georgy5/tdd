# array of numbers
# Create a function to count boomerangs
# A boomerang is 3 lements where the first and last numbers are the same,
# the middle number however is different.
# eg  [1, 2, 1, 2] would be two boomerangs
# output as: "2 Boomerangs found: [[1, 2, 1], [2, 1, 2]]"

# thoughts:
# iterate and compare groups of three numbers

class Boomerang
  def find(ary)
    boomerang_list = []

    ary.each_cons(3) do |a, b, c|
      if a == c and a != b
        boomerang_list << [a, b, c]
      end
    end
  
    boomerang_count = boomerang_list.size
  
    if boomerang_count.zero?
      "This list does not contain any Boomerangs"
    else
      plural = boomerang_count > 1 ? 's' : ''
      "#{boomerang_count} Boomerang#{plural} found: #{boomerang_list}"
    end
  end
end
