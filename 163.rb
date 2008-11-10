# Consider an equilateral triangle in which straight lines are drawn from each vertex to the middle of the opposite side, such as in the size 1 triangle in the sketch below.
# 
# 
# Sixteen triangles of either different shape or size or orientation or location can now be observed in that triangle. Using size 1 triangles as building blocks, larger triangles can be formed, such as the size 2 triangle in the above sketch. One-hundred and four triangles of either different shape or size or orientation or location can now be observed in that size 2 triangle.
# 
# It can be observed that the size 2 triangle contains 4 size 1 triangle building blocks. A size 3 triangle would contain 9 size 1 triangle building blocks and a size n triangle would thus contain n^2 size 1 triangle building blocks.
# 
# If we denote T(n) as the number of triangles present in a triangle of size n, then
# 
# T(1) = 16
# T(2) = 104
# 
# Find T(36).

# Notes:
#   T(36) would contain 1296 size 1 triangles
#   T(n) would contain n*n size 1 triangles

# THIS IS ALL WRONG
def T(n)  # n = size of large triangle
  t = n*n # number of size 1 triangles
  tc = (6*t) - (3*n) + 3 # number of connections
  # (tc * tc + tc + 4) / t
  tc * tc - 20
end

puts "1:  " + T(1).to_s
puts "2:  " + T(2).to_s
puts "36: " + T(36).to_s