defmodule CalificacionEstudiante do

  def main do
    # Crear una funcion de evaluar proyecto que reciba un mapa con las calificaciones de los estudiantes
    # y el nombre de los estudiantes
    defp evaluar_proyecto(calificaciones) do
        # Crear un mapa llamado calificaciones que contenga las calificaciones de los estudiantes
        calificaciones = %{
          "Juan" => 5,
          "Pedro" => 3,
          "Maria" => 4,
          "Luis" => 5,
          "Ana" => 3
        }
        # Se suman las calificaciones de los estudiantes
        Enum.sum(calificaciones)
      end
    end

    # Retornar una tupla  con (promedio,estado) donde estado es "Aprobado" si el promedio es mayor o igual a 3
    # y "Reprobado" si el promedio es menor a 3

    def evaluar_promedio(calificaciones) do
      promedio = Enum.sum(calificaciones) / Enum.count(calificaciones)
      if promedio >= 3 do
        IO.puts("Aprobado")
      else
        IO.puts("Reprobado")
      end
    end

    # Si el estudiante no esta en el mapa debe mostrar no encontrado
    def evaluar_estudiante(calificaciones) do
      case calificaciones do
        [] -> IO.puts("No encontrado") # Si el estudiante no esta en el mapa debe mostrar no encontrado
      end
    end

    # Imprimir el promedio de las calificaciones y el estado del estudiante
    IO.puts("Promedio de calificaciones: #{promedio}") # Se muestra el promedio de las calificaciones
    IO.puts("Estado del estudiante: #{estado}") # Se muestra el estado del estudiante


  end

  CalificacionEstudiante.main()
