require "minitest/autorun"
require_relative "making_methods.rb"

class Making_methods_test < Minitest::Test

	def test_true_equals_true
		assert_equal(true,true)
	end

	def test_abc_equals_cba
		assert_equal("cba", reverse_string("abc"))
	end

	def test_cheese_equals_eseehc
		assert_equal("eseehc", reverse_string("cheese"))
	end

end