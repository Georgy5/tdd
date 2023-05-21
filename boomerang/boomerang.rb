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
    none_found_message = "This list does not contain any Boomerangs"
    if ary.length < 3
      return none_found_message
    end
  
    boomerang_counter = 0
    boomerang_list = []
    ary.each_with_index do |_, index|
      boom_ary = []
      if ary[index] == ary[index + 2] and ary[index] != ary[index + 1]
        boomerang_counter += 1
        boom_ary << ary[index]
        boom_ary << ary[index + 1]
        boom_ary << ary[index + 2]
      end
      boomerang_list << boom_ary unless boom_ary.empty?
    end
  
    if boomerang_counter == 0
      return none_found_message
    end
  
    return "#{boomerang_counter} Boomerang found: #{boomerang_list}"
  end
end
