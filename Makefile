install:
	pip install -e .[dev]

test:
	pytest

clean:
	rm -rf .pytest_cache
	rm -rf src/sample_deployment/__pycache__/
	rm -rf src/sample_deployment.egg-info/
	rm -rf tests/__pycache__/