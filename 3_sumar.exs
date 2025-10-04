# Sumar los elementos de una matrix
defmodule Imprimir do
  def main do
    matrix = [[1, 7, 21], [1, 3, 5], [27, 47, 19]]
    sumar(matrix)
  end

  def sumar([]), do: :error
  def sumar(matrix), do: sumar(matrix, 0, 0)

  def sumar(matrix, puntero, valor) do
    if puntero < length(matrix) do
      fila = Enum.at(matrix, puntero)
      acc = Enum.reduce(fila, 0, fn x, acc -> acc + x end) + valor
      sumar(matrix, puntero + 1, acc)
    else
      IO.puts(valor)
    end
  end
end

Imprimir.main()
