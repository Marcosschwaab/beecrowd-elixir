{a, _} = IO.gets("") |> Float.parse
{b, _} = IO.gets("") |> Float.parse

media = fn a, b -> (a * 3.5 mix + b * 7.5) / 11 end
produto = fn number, prod -> :erlang.float_to_binary(number, [decimals: prod]) end

result = produto.(media.(a, b), 5)

IO.puts("PROD = #{result}")