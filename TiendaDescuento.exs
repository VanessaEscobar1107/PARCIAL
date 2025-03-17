defmodule TiendaDescuento do

  def main do
    # Implementar una funcion para calcular el descuento de un producto, recibe lista
    # de productos y un porcentaje de descuento
    def calcular_descuento(productos, descuento) do
      # Se calcula el descuento de cada producto
      for producto <- productos do
        descuento_producto = producto["precio"] * descuento / 100
        IO.puts("El descuento del producto #{producto["nombre"]} es: #{descuento_producto}")
      end
    end
  end

  # Calcular el precio con el descuento y generar una nueva lista usando  Enum.map
  def calcular_precio_descuento(productos, descuento) do
    Enum.map(productos, fn producto ->
      descuento_producto = producto["precio"] * descuento / 100
      precio_descuento = producto["precio"] - descuento_producto
      %{producto | "precio" => precio_descuento}
    end)
  end

  # Calcular el descuento aplicado con Enum.sum
  def calcular_descuento_total(productos, descuento) do
    Enum.sum(Enum.map(productos, fn producto ->
      descuento_producto = producto["precio"] * descuento / 100
    end))
  end

  # Si la lista de productos esta vacia debe retornar {[], 0}
  def calcular_descuento_total([]), do: {[], 0}

end

TiendaDescuento.main()
