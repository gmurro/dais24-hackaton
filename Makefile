#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECT_NAME = dais23_hackaton
PYTHON_INTERPRETER = python
VENV := $(PROJECT_DIR)/.venv


#################################################################################
# COMMANDS                                                                      #
#################################################################################


.PHONY: python-version
python-version:  # Which python interpreter is used
	@$(PYTHON_INTERPRETER) -V
	@which $(PYTHON_INTERPRETER)
.PHONY: install
install: ## Install Python Dependencies and install the pre-commit hooks
	@pip install -U pip setuptools wheel
	@pip install -e .