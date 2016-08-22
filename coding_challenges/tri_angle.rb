# Challenge :
# A triangle is classified as follows:

# right One angle of the triangle is a right angle (90 degrees)
# acute All 3 angles of the triangle are less than 90 degrees
# obtuse One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# Solution : 
def triangle(angle1,angle2,angle3)
  all_angles = [angle1, angle2, angle3]
  case
  when all_angles.reduce(&:+) != 180,validate_triangle(all_angles)
    p ':invalid'
  when all_angles.include?(90)
    p ':right'
  when all_angles.find {|n| n > 90}
    p':obtuse'
  when all_angles.find {|n| n < 90}
    p':actue'
  end
end

def validate_triangle(angles)
  angles.include?(0)
end

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid