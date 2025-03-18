defmodule CalificacionEstudiante do

  # Funcion para evaluar el proyecto, recibe un mapa con calificaciones y retorna la suma
  def evaluar_proyecto(calificaciones) do
    Enum.sum(Map.values(calificaciones)) # Suma de los valores del mapa de calificaciones
  end

  # Funcion para calcular el promedio y determinar si el estudiante aprobo o no
  def evaluar_estudiante(calificaciones) do
    if map_size(calificaciones == 0) do
      {:error, "No hay calificaciones"}
    else
      promedio = evaluar_proyecto(calificaciones) / map_size(calificaciones) # Promedio de las calificaciones
      estado = if promedio >= 3, do: "Aprobado", else: "Reprobado" # Determinar si aprobo o reprobo
      {promedio, estado} # Retornar promedio y estado
      end
    end

    # Funcion para evaluar si el estudiante esta en el mapa de estudiantes
    def evaluar_estudiantes(calificaciones, nombre) do
      case Map.get(calificaciones, nombre) do
        nil -> {:error, "Estudiante no encontrado"} # Si no se encuentra el estudiante
        nota -> "Calificacion de #{nombre}: #{nota}" # Si se encuentra el estudiante se retorna su calificacion
      end
    end

    # Funcion principal para ejecutar el programa de calificaciones de estudiantes
    def main do
      calificaciones = %{
        "Jimena" => 4,
        "Ana"    => 4,
        "Lee"    => 3,
      }


    # Calcular promedio y estado de los estudiantes
    {promedio, estado} = evaluar_estudiante(calificaciones) # Calcular promedio y estado

    # Imprimir promedio y estado
      IO.puts("Promedio de calificaciones: #{promedio}")
      IO.puts("Estado: #{estado}")


      # Buscar un estudiante en especifico
      IO.puts(evaluar_estudiantes(calificaciones, "Jimena"))
      IO.puts(evaluar_estudiantes(calificaciones, "Fanny")) # Estudiante no encontrado en el mapa

  end
end

CalificacionEstudiante.main() # Ejecutar el programa de calificaciones de estudiantes
