#!/bin/bash

# Obtiene el nombre del archivo .cpp del primer argumento
cpp_file="$1"

# Extrae el nombre base del archivo (sin la extensión .cpp)
base_name="${cpp_file%.cpp}"

# Compila el programa y crea un ejecutable con el mismo nombre base del archivo .cpp
g++ -o "$base_name" "$cpp_file"

# Verifica si la compilación tuvo éxito
if [ $? -eq 0 ]; then
    echo "Compilación exitosa para $cpp_file. Ejecutando el programa:"
    # Ejecuta el programa
    "./$base_name"
else
    echo "Error de compilación para $cpp_file."
fi

## EJECUTAR BASH ./compilaCpp.sh mi_programa.cpp
