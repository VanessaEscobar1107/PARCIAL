defmodule TiendaDescuento do

  # Funcion para calcular el descuento de un producto y mostrarlo
  def calcular_descuento(productos, descuento) do
    for productos <- productos do
      descuento_producto = producto [:precio] * descuento / 100
      IO.puts "El descuento del producto es: #{producto[:nombre]} es: #{descuento_producto}" # Mostrar el descuento del producto
    end
  end

  # Funcion para calcular el precio con el descuento y generar una nueva lista usando Enum.map
  def calculcar_precio_descuento(productos, descuento) do
    Enum.map(productos, fn producto ->           # Enum.map para recorrer la lista de productos
      descuento_producto = producto [:precio] * descuento / 100 # Calcular el descuento del producto
      precio_descuento = producto [:precio] - descuento_producto # Calcular el precio con el descuento
      %{producto | precio: precio_descuento}                     # Generar una nueva lista con el precio con descuento
    end)
  end

  # Funcion para calcular el descuento total aplicando con Enum.sum()
  def calcular_descuento_total(productos, descuento) do
    Enum.sum(Enum.map(productos, fn producto -> # Enum.map para recorrer la lista de productos
    producto [:precio] * descuento / 100        # Calcular el descuento del producto y sumarlos con Enum.sum()
    end))
  end

 # Si la lista de productos esta vacia, retorna {[],0}
 def calcular_descuento_total([]), do: {[],0}  # Si la lista de productos esta vacia, retorna {[],0}
end

# Prueba del modulo
productos = [
  %{nombre: "Camisa", precio: 100},
  %{nombre: "Pantalon", precio: 200},
  %{nombre: "Zapatos", precio: 300}
]

# Calcular el descuento de los productos
descuento = 10

# Mostrar el descuento de los productos
IO.puts("\n === Descuento individual de los productos ===")
productos_descuento = TiendaDescuento.calcular_descuento(productos, descuento) # Calcular el descuento de los productos
IO.inspect(productos_descuento) # Mostrar el descuento de los productos

# Mostrar la lista con precios con descuento
IO.puts("\n === Lista con precios con descuento ===")
productos_descuento = TiendaDescuento.calculcar_precio_descuento(productos, descuento) # Calcular el precio con descuento
IO.inspect(productos_descuento) # Mostrar la lista con precios con descuento

# Mostrar el descuento total de los productos
IO.puts("\n === Total de descuento aplicado ===")
IO.puts("El total de descuento aplicado es: #{TiendaDescuento.calcular_descuento_total(productos, descuento)}") # Calcular el descuento total de los productos

TiendaDescuento.main()
