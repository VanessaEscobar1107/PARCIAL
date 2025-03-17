  # Crear un módulo llamado TiendaTecnologia que contenga los siguientes módulos:
  defmodule TiendaTecnologia do
    def main do
      # Crear un mapa llamado inventario que contenga los siguientes productos:
      inventario = %{
        "Laptop" => %{
          "precio" => 1000,
          "cantidad" => 5
        },
        "Mouse" => %{
          "precio" => 20,
          "cantidad" => 100
        },
        "Teclado" => %{
          "precio" => 50,
          "cantidad" => 50
        }
      }
      # Crear una funcion que actualizar_inventario que reciba el nombre del producto y la cantidad a agregar y devuelva el inventario
      def actualizar_inventario(producto, cantidad) do
        IO.puts("Agrege el producto: #{producto} y la cantidad: #{cantidad}")
        IO.gets("> ") # Se pide al usuario que ingrese el producto y la cantidad
        IO.puts("Producto: #{producto} y cantidad: #{cantidad}")

        # Si el prodcuto no existe debe mostrar un mensaje que diga "El producto no existe"
        if producto != inventario do
          IO.puts("El producto no existe")
        end
      else

        # Se actualiza el inventario con el producto y la cantidad
        inventario = %{
          producto => %{
            "precio" => 1000,
            "cantidad" => 5
          },
          producto => %{
            "precio" => 20,
            "cantidad" => 100
          },
          producto => %{
            "precio" => 50,
            "cantidad" => 50
          }
        }

      end

      # Si la cantidad a vender es mayor que la disponible debe mostrar un mensaje que diga "No hay suficiente cantidad"
      if cantidad > inventario do
        IO.puts("No hay suficiente cantidad")
      end
    end

    # Mostrar el inventario actualizado con la cantidad de productos
    IO.puts("Inventario actualizado: #{inventario}")

  end

  TiendaTecnologia.main()
