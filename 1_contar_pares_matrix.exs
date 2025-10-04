# Contar pares de una Matrix
defmodule Matrix do
  def main do
    matrix = [[1, 7, 21], [1, 3, 12], [27, 47, 19]]
    IO.puts("Cantidad de pares: #{contar_pares(matrix)}")
  end

  def contar_pares([]), do: 0

  def contar_pares([fila | resto]) do
    contar_pares_fila(fila) + contar_pares(resto)
  end

  def contar_pares_fila([]), do: 0

  def contar_pares_fila([h | t]) do
    if rem(h, 2) == 0 do
      1 + contar_pares_fila(t)
    else
      contar_pares_fila(t)
    end
  end
end

Matrix.main()
