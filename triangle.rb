# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  case [a,b,c].uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else        :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end


class TriangleError < StandardError
end
def triangle(a, b, c)
  sides = [a,b,c].sort

  raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
  return :equilateral if sides.uniq.length  == 1
  return :isosceles if sides.uniq.length  == 2
  :scalene
end




  #OR

  #[:equilateral, :isosceles, :scalene].fetch([a,b,c].uniq.size - 1)

  #OR
  #with error message
#   def triangle(a, b, c)
#   a, b, c = [a, b, c].sort
#   raise TriangleError if a <= 0 or a + b <= c
#   return :equilateral if a == c
#   return :isosceles if a == b or b == c
#   return :scalene
# end

#OR

# def triangle(a, b, c)
#   if a == b && a == c              # associativity => only 2 checks are necessary
#     :equilateral
#   elsif a == b || a == c || b == c # == operator has the highest priority
#     :isosceles
#   else
#     :scalene                       # no need for return keyword
#   end
# end

#OR


