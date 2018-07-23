defmodule My do

  def doubleListNumbers(list) do
  Enum.reduce(list, [], fn x, acc -> [x * 2| acc] end)
  end
  
  def doubleEvenNumbers(list) do
  Enum.reduce(list, [], fn x, acc ->
  if rem(x, 2) == 0, do: [x * 2 | acc], else: acc
  end)
  end

  def new() do
  %{}
  end
  
  def add(map, key, value) do
  if Map.has_key?(map, key) do
  newValue = map[key] + value
  %{map | key => newValue}
  else
  Map.put(map, key, value)
  end
  end

  def remove(map, key, value) do
  newValue = map[key] - value
  %{map | key => newValue}
  end
end