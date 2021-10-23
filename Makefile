install:
	pip install -e .[dev]

install_private_repo:
	pip install git+https://github.com/sarodz/sample_sklearn@main

test:
	pytest

clean:
	rm -rf .pytest_cache
	rm -rf src/sample_deployment/__pycache__/
	rm -rf src/sample_deployment.egg-info/
	rm -rf tests/__pycache__/