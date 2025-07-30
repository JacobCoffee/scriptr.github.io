.PHONY: help cv-json serve build clean

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

setup: ## setup things for cv json genny,
	@echo "setting up env"
	@uv venv --python 3.13 --seed
	@uv pip install pyyaml
	@gem install bundler:1.17.2
	@bundle install

cv-json: ## Update CV JSON from markdown CV
	@echo "Converting CV markdown to JSON..."
	@uv run python scripts/cv_markdown_to_json.py --input _pages/cv.md --output _data/cv.json --config _config.yml
	@echo "CV JSON updated successfully!"

serve: ## Run Jekyll server locally
	bundle exec jekyll serve

build: ## Build Jekyll site
	bundle exec jekyll build

clean: ## Clean Jekyll build files
	bundle exec jekyll clean
	rm -rf _site