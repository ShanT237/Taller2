defmodule SumaObjetivo do
  def main do
    lista = [3, 34, 4, 12, 5, 2]
    objetivo = 9

    case encontrar_suma(lista, objetivo) do
      {:ok, combinacion} ->
        IO.puts("Combinación encontrada: #{inspect(combinacion)}")

      :error ->
        IO.puts("No existe combinación que dé #{objetivo}")
    end
  end

  def encontrar_suma(_, 0), do: {:ok, []}
  def encontrar_suma([], _), do: :error

  def encontrar_suma([h | t], objetivo) do

    case encontrar_suma(t, objetivo - h) do
      {:ok, combinacion} -> {:ok, [h | combinacion]}
      :error -> encontrar_suma(t, objetivo)
    end
  end
end

SumaObjetivo.main()
