# Define default environment as 'dev' if not provided
ENV ?= dev  

# Target to install Node.js based on environment
install-node:
ifeq ($(ENV), dev)
	@echo "Installing Node.js in Development Environment"
	npm install
else ifeq ($(ENV), uat)
	@echo "Installing Node.js in UAT Environment"
	npm install --production  # Install only production dependencies
else ifeq ($(ENV), prod)
	@echo "Installing Node.js in Production Environment"
	npm install --production  # Install only production dependencies
else
	@echo "Invalid environment: $(ENV). Please specify dev, uat, or prod."
endif
