defmodule Areas do
  # Função para calcular a área do triângulo retângulo
  def area_triangulo_retangulo(base, altura) do
    (base * altura) / 2
  end

  # Função para calcular a área do círculo
  def area_circulo(raio) do
    pi = 3.14159
    pi * (raio * raio)
  end

  # Função para calcular a área do trapézio
  def area_trapezio(base1, base2, altura) do
    ((base1 + base2) * altura) / 2
  end

  # Função para calcular a área do quadrado
  def area_quadrado(lado) do
    lado * lado
  end

  # Função para calcular a área do retângulo
  def area_retangulo(lado1, lado2) do
    lado1 * lado2
  end
end

# Leitura dos valores de entrada
[a, b, c] = String.split(IO.gets(""), " ") |> Enum.map(&String.to_float/1)

# Cálculo das áreas
area_tri_ret = Areas.area_triangulo_retangulo(a, c)
area_circ = Areas.area_circulo(c)
area_trap = Areas.area_trapezio(a, b, c)
area_quad = Areas.area_quadrado(b)
area_ret = Areas.area_retangulo(a, b)

# Impressão dos resultados
IO.puts("TRIANGULO: #{Kernel.Float.to_string(area_tri_ret, [:decimals, 3])}")
IO.puts("CIRCULO: #{Kernel.Float.to_string(area_circ, [:decimals, 3])}")
IO.puts("TRAPEZIO: #{Kernel.Float.to_string(area_trap, [:decimals, 3])}")
IO.puts("QUADRADO: #{Kernel.Float.to_string(area_quad, [:decimals, 3])}")
IO.puts("RETANGULO: #{Kernel.Float.to_string(area_ret, [:decimals, 3])}")
