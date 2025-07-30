#!/bin/bash

echo "🚀 Desplegando EquipLink Frontend en Railway..."

# Verificar que estamos en la carpeta correcta
if [ ! -f "package.json" ]; then
    echo "❌ Error: No se encuentra package.json. Asegúrate de estar en la carpeta frontend."
    exit 1
fi

echo "📦 Instalando dependencias..."
npm install

echo "🔧 Verificando archivos necesarios..."
required_files=("index.html" "script.js" "style.css" "server.js")
for file in "${required_files[@]}"; do
    if [ ! -f "$file" ]; then
        echo "❌ Error: Archivo requerido no encontrado: $file"
        exit 1
    fi
done

echo "✅ Todos los archivos requeridos están presentes."

echo "🌐 Instrucciones para continuar:"
echo ""
echo "1. Asegúrate de tener Railway CLI instalado:"
echo "   npm install -g @railway/cli"
echo ""
echo "2. Autentícate en Railway:"
echo "   railway login"
echo ""
echo "3. Inicializa el proyecto (si es la primera vez):"
echo "   railway init"
echo ""
echo "4. Despliega el proyecto:"
echo "   railway up"
echo ""
echo "5. Una vez desplegado, actualiza la URL de la API en script.js:"
echo "   Cambia 'http://localhost:7000/api' por tu URL de backend en Railway"
echo ""
echo "🎉 ¡Listo para desplegar!" 