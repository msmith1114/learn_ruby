#write your code here
def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(array)
  counter = 0
  array.each do |x|
    counter = counter + x
  end
  counter
end

def multiply(*numbers)
    result = 1
    numbers.each { |n| result = result * n }
    result
  end

def power(x, y)
    x ** y
end
def factorial x
    if x <= 1
        1
    else
        x * factorial(x -1)
    end
end
