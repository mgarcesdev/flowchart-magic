.PHONY: clean build upload release

# Eliminar archivos antiguos de distribución
clean:
	rm -rf dist/ build/ *.egg-info

# Generar archivos de distribución
build: clean
	python -m build

# Subir a PyPI
upload:
	twine upload dist/*

# Flujo completo: limpiar, construir y subir
release: build upload
	@echo "Nueva versión subida a PyPI con éxito."