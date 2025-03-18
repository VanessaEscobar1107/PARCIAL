  # Crear un módulo llamado TiendaTecnologia que contenga los siguientes módulos:
  defmodule TiendaTecnologia do

    # Definir el inventario de la tienda con los siguientes productos:
    def inventario_inicial do
      %{
        "Laptop" => %{prcio: 1000, cantidad: 10},
        "Tablet" => %{prcio: 500, cantidad: 20},
        "Smartphone" => %{prcio: 300, cantidad: 30}
      }
    end

    # Funcion para actualizar el inventario
    def actualizar_inventario(producto, cantidad, inventario) do
      case Map.has_key?(inventario, producto) do
        # Se actualiza la cantidad del producto en el inventario
        Map.update(inventario, producto, fn datos ->
          %{datos | cantidad: datos.cantidad + cantidad} # Se actualiza la cantidad del producto
        end)
      else # Si el producto no existe en el inventario
        IO.puts("El producto no existe en el inventario")
        inventario
      end
    end

    # Funcion para vender un producto
    def vender_producto(inventario, producto, cantidad) do
      case
    end

    end



  TiendaTecnologia.main()
