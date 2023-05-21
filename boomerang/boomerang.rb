# array of numbers
# Create a function to count boomerangs
# A boomerang is 3 lements where the first and last numbers are the same,
# the middle number however is different.
# eg  [1, 2, 1, 2] would be two boomerangs

# thoughts:
# iterate and compare groups of three numbers

class Boomerang
  def count(ary)
    count = 0
    return 0 unless ary.size >= 3

    if ary[0] == ary[2] and ary[0] != ary[1]
      # Found a boomerang
      count += 1
      return count
    end
  end
end
