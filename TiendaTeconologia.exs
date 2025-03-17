  # Crear un módulo llamado TiendaTecnologia que contenga los siguientes módulos:
  defmodule TiendaTecnologia do
    defmodule Producto do
      defstruct [:nombre, :precio, :stock]
    end

    defmodule Cliente do
      defstruct [:nombre, :apellido, :edad]
    end

    defmodule Venta do
      defstruct [:cliente, :productos, :total]
    end

    defmodule Tienda do
      defstruct [:productos, :ventas]

      def agregar_producto(tienda, producto) do
        %{tienda | productos: [producto | tienda.productos]}
      end

      def agregar_venta(tienda, venta) do
        %{tienda | ventas: [venta | tienda.ventas]}
      end

      def calcular_total(venta) do
        Enum.reduce(venta.productos, 0, fn producto, total -> producto.precio + total end)
      end
    end
  end
