# Dado el siguiente código, determina su salida.
defmodule Tuplas do
  def analizar_tupla({a,b}) when is_integer(a) and is_integer(b) do: a*b
    def analizar_tupla(_), do: "Formato incorrecto"
    end
  IO.inspect(analizar_tupla({4,5}))
  IO.inspect(Tuplas.analizar_tupla({4,"hola"}))


Tuplas

# La salida es:
# 20 y "Formato incorrecto"
