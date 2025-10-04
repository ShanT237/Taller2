# Contar los pares de una lista

defmodule Lista do
  def main do
    lista = [1, 7, 8, 19, 27, 21, 20, 6, 3, 12]

    contar_pares(lista)
    |> IO.puts()
  end

  def contar_pares([]), do: {:error, "Lista vacia"}

  def contar_pares(lista), do: contar_pares(lista, 0)

  def contar_pares([], acc), do: acc

  def contar_pares([h | t], acc) do
    new_acc =
      if rem(h, 2) == 0 do
        acc + 1
      else
        acc
      end

    contar_pares(t, new_acc)
  end
end

Lista.main()
