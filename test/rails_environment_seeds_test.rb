require "test_helper"

class RailsEnvironmentSeedsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RailsEnvironmentSeeds::VERSION
  end
end
