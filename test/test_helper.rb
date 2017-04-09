ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# for minitest
require 'minitest/rails'
require 'minitest/documentation'
require 'minitest/rails/capybara'
require 'minitest/power_assert'

# https://github.com/rails/rails-controller-testing
require 'rails-controller-testing'
Rails::Controller::Testing.install

# add context method
# http://qiita.com/baban/items/a43b66f29a7d1c52ab63#%E3%81%8A%E3%81%BE%E3%81%91-context%E9%96%A2%E6%95%B0%E3%81%AE%E4%BD%9C%E6%88%90
module Kernel
  alias_method :context, :describe
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
