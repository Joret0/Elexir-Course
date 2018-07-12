sum = fn(a, b, c) ->
(0, 0, _) -> "FizzBuzz"
(0, _, _) -> "Fizz"
(_, 0, _) -> "Buzz"
(_, _, c) -> "Test"
end


checkListSize = fn(list) ->
 if length(list) = 0 do 
    true
 else
    false
end
end


checkIsItMap = fn(map) ->

if %{} = map do
  "Hello, Alice Hemingway"
end
end
