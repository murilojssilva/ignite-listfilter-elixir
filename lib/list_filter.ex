require Integer
require String

defmodule ListFilter do
  def call(list) do
    Enum.flat_map(list, fn elem ->
      case Integer.parse(elem) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.count(fn x ->
      rem(x, 2) != 0
    end)
  end
end
