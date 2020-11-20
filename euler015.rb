# Lattice paths
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


# How many such routes are there through a 20×20 grid?
def factorial n
    return 1 if n ==1
    n* (factorial (n-1))
end

def euler015
    (factorial 40) / ((factorial 20) * (factorial 20))
end

puts euler015