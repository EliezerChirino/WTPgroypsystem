#!/bin/bash

echo "==== Building WTP System ===="

# Instalar dependencias
echo "→ Installing dependencies..."
pip install -r requirements.txt

# Recolectar archivos estáticos
echo "→ Collecting static files..."
python manage.py collectstatic --noinput

# Correr migraciones
echo "→ Running migrations..."
python manage.py migrate --noinput

# Crear superusuario automáticamente
echo "→ Creating superuser..."
python create_superuser.py

echo "==== Build completed! ===="