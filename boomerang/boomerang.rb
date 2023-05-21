# array of numbers
# Create a function to count boomerangs
# A boomerang is 3 lements where the first and last numbers are the same,
# the middle number however is different.
# eg  [1, 2, 1, 2] would be two boomerangs

# thoughts:
# iterate and compare groups of three numbers

class Boomerang
  def count(ary)
    return 0 unless ary.size >= 3
    count = 0
    ary.each_with_index do |number, index|
      if ary[index] == ary[index + 2] and ary[index] != ary[index + 1]
        count += 1
      end
    end
    count
  end
end
