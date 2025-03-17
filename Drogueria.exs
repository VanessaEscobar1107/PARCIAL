defmodule Drogueria do

  def main do

    # Crear una funcion analizar_ventas que reciba un mapa con las ventas diarias
    # y devuelva el total de ventas
    defmodule analizar_ventas() do
      def ventas_diarias(ventas) do
        # Se suman las ventas diarias
        Enum.sum(ventas)
      end
    end

    # Funcion para calcular el total de ventas y el promedio de ventas
    defmodule calcular_ventas() do
      def ventas_totales(ventas) do
        # Se suman las ventas totales
        Enum.sum(ventas)
      end

      def promedio_ventas(ventas) do
        # Se calcula el promedio de ventas
        Enum.sum(ventas) / Enum.count(ventas)
      end
    end

    # Crear un case cuando no haya ventas
    defmodule ventas_vacias() do
      case ventas do
        [] -> IO.puts("No hay ventas") # Si no hay ventas debe mostrar un mensaje que diga "No hay ventas"
      end
    end




  end

end
