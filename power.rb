#! /usr/bin/env ruby

def power(x,y)
  if (y == 0)
    return 1
  elsif (y == 1)
    return x
  else
    res = x
  end
  for i in 1..y-1 do
    res = res * x
  end
  return res
end

print 'power(10,0) '
puts   power(10,0)
print 'power(10,1) '
puts   power(10,1)
print 'power(10,2) '
puts   power(10,2)

