# Invertir Matrix
defmodule Matrix do
  def main do
    matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

    IO.inspect(invertir(matrix), charlists: :as_lists)
  end

  def invertir([]), do: []

  def invertir([h | t]) do
    fila_invertida = invertir_fila(h)
    resto_invertido = invertir(t)
    resto_invertido ++ [fila_invertida]
  end

  def invertir_fila([]), do: []
  def invertir_fila([h | t]), do: invertir_fila(t) ++ [h]
end

Matrix.main()
