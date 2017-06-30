require "simplecov"
SimpleCov.start "rails"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    expectations.syntax = [:should, :expect]
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  SimpleCov.start do
    add_filter "test/"
    add_filter "config/"
    add_filter "vendor/"

    add_group "Controllers", "app/controllers"
    add_group "Models", "app/models"
    add_group "Services", "app/services"
    add_group "Helpers", "app/helpers"
    add_group "Mailers", "app/mailers"
    add_group "Views", "app/views"
  end
end
