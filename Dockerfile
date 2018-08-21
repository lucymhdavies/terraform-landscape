FROM ruby:2-slim

# Install Landscape
# https://github.com/coinbase/terraform-landscape
RUN gem install terraform_landscape -v 0.2.0

ENTRYPOINT ["/usr/local/bundle/bin/landscape"]

# Run with, e.g.
# terraform plan | docker run -i --rm terraform_landscape
