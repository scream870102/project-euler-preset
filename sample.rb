require 'pp'

def to2DimA s
  rows = s.split("\n")
  # 一行
  array = rows.map{|line| line.split(' ')}
  # 複数
  # array = rows.map do |line|
  #   line.split(' ')
  # end  
end

def to2DimB s
  rows = s.split("\n")
  height = rows.length
  width  = rows[0].split(" ").length
  array = Array.new(height){Array.new(width)}
  for i in (0...height)
    columns = rows[i].split(" ")
    for j in (0...width)
      array[i][j] = columns[j]
    end
  end
  array[0][0]
end

def to2DimC s
  rows = s.split("\n")
  height = rows.length
  width  = rows[0].split(" ").length
  array = []
  for i in (0...height)
    array << rows[i].split(" ")
  end
  array[0][0]
end

def to2DimA s
  s.split("\n").map{|line| line.split(' ')}
end

res = to2DimB("08 02 22 97 08 02 22 97 08 02 22 97 08 02 22 97
08 02 22 97 08 02 22 97 08 02 22 97 08 02 22 97
08 02 22 97 08 02 22 97 08 02 22 97 08 02 22 97")

pp %w(08 02 22 97 08 02 22 97 08 02 22 97 08 02 22 97
08 02 22 97 08 02 22 97 08 02 22 97 08 02 22 97
08 02 22 97 08 02 22 97 08 02 22 97 08 02 22 97)

pp %w(aa bb cc)

pp res