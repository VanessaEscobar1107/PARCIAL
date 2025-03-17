# Dado el siguiente código, cuál es la salida correcta

lista = [1,2,3,4]
resultado = Enum.reduce(lista, 10, fn x, acc ->  acc + x end)

IO.puts(resultado)

# La salida es:
# 20
