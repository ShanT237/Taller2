# Invertir Lista

defmodule Lista do
  def main do
    lista = [1, 7, 19, 47, 27, 21, 9, 88, 13]

    invertir(lista)
    |> IO.inspect()
  end

  def invertir([]), do: {:error, "La lista está vacia"}
  def invertir(lista), do: invertir(lista, [])

  def invertir([], lista), do: lista

  def invertir([h | t], lista) do
    invertir(t, [h | lista])
  end
end

Lista.main()
