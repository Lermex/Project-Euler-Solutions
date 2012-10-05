current_term = 1
previous_term = 1
sum = 0

while current_term < 4_000_000 do
  sum += current_term if current_term.even?
  current_term, previous_term = current_term + previous_term, current_term
end

puts sum
