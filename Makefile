copy:
	cp script.py __main__.py
	cp script.py subdir/script.py
	cp script.py subdir/__main__.py

clean:
	@rm -rf __pycache__ */__pycache__
	@rm -f *.pyc */*.pyc

sterile: clean
	rm -rf .tox
