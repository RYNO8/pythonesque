.PHONY: test docstring pdoc pdoc_live readme

test:
	python -m pytest

docstring:
	pyment -w -o numpydoc series.py 

pdoc:
	# pdoc to reads docstrings, generates html
	pdoc --force --html pythonesque/ --output-dir docs

readme:
	python -c 'import pythonesque; print(pythonesque.__doc__, file=open("README.md","w"))'

pdoc_live:
	pdoc --http localhost:8080 pythonesque
