defmodule Drogueria do

  # Funcion para analizar las ventas diarias y calcular el total de ventas
  def analizar_ventas(ventas) do
    Enum.sum(Map.values(ventas)) # Suma de los valores del mapa ventas
  end

  # Funcion para calcular el total de ventas
  def ventas_totales(ventas) do
    Enum.sum(Map.values(ventas)) # Suma de los valores del mapa ventas
  end

  # Funcion para calcular el promedio de las ventas
  def promedio_ventas(ventas) do
    if map_size(ventas) == 0 do
      {:error, "No hay ventas registradas"}
    else
      Enum.sum(Map.values(ventas)) / map_size(ventas) # Suma de los valores del mapa ventas -> Enum.sum suma los elementos de una lista y map_size devuelve el tamaño de un mapa
    end
  end

  # Funcion principal que ejecuta las funciones anteriores
  def main do
    ventas = %{
      "Lunes" => 1000,
      "Martes" => 2000,
      "Miercoles" => 3000,
      "Jueves" => 4000,
      "Viernes" => 5000
    }

    # Manejo de caso cuando no hay ventas registradas en el mapa
    if map_size(ventas) == 0
    IO.puts("No hay ventas registradas")
    else
      total = ventas_totales(ventas)
      promedio = promedio_ventas(ventas)

      # Imprimir resultados de las funciones
      IO.puts("Total de ventas: #{total}")
      IO.puts("Promedio de ventas: #{promedio}")
  end
end

# Llamado a la funcion principal
Drogueria.main()
