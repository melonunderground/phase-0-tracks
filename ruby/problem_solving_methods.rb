
def search_array(arr, int)
  if arr.include?(int)
  else
    p nil
  end
  puts arr.length
end
arr = [6, 4, 2, 87]
search_array(arr, 4)



def fib(n)
  if n == 0
    n = 0
  elsif n == 1
    n = 1
  elsif n >= 2
    (fib(n-2) + fib(n-1))
  else
    puts "Please enter a positive integer"
  end
end

p fib(12)

If the first element is greater than the adjacent element swap them else leave them as is.
=end