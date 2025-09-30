defmodule Matrix do
  def main do
    matrix = [[1, 7, 21], [1, 3, 5], [27, 47, 19]]
    diagonal(matrix)
  end

  def diagonal(matrix), do: diagonal(matrix, 0, length(matrix))

  defp diagonal(_, indice, tamano) when indice == tamano, do: :ok
  defp diagonal([fila | resto], indice, tamano) do
    IO.puts(Enum.at(fila, indice))
    diagonal(resto, indice + 1, tamano)
  end
end

Matrix.main()
