list = ["Alice Addison", "Bob Benetton"]
Enum.map(list, fn x -> [x] end)


list = [%{name: "Alice Addison", age: 14}, %{name: "Bob Benetton", age: 21}, %{name: "Eve Elliot", age: 18}]
Enum.map(list, fn %{age: age, name: name} -> ["#{name}: #{age} years old"] end)


list = ["An example sentence", "Another sentence”, "Third sentence"]
Enum.filter(list, fn el -> !String.contains?(el, "a") end)


multyList = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
for list <- multyList, do:
for e <- list, do: e * 2


multyList = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
multyList = for list <- multyList, do:
Enum.filter(list, fn (e) -> (rem e, 2) == 0 end)

