{a, _} = IO.gets("") |> Integer.parse
{b, _} = IO.gets("") |> Integer.parse

IO.puts("X = #{a + b}")