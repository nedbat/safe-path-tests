copy:
	cp script.py __main__.py
	cp script.py subdir/script.py
	cp script.py subdir/__main__.py
	cp script.py src/safepathtests/work.py
	cp script.py src/safepathtests/__main__.py

clean:
	@rm -rf __pycache__ */__pycache__
	@rm -f *.pyc */*.pyc
	@rm -rf src/*.egg-info

sterile: clean
	rm -rf .tox
