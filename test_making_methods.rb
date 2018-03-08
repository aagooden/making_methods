require "minitest/autorun"
require_relative "making_methods.rb"

class Making_methods_test < Minitest::Test
	
	def test_true_equals_true
		assert_equal(true,true)
	end

end