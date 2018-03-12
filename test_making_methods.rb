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

	def test_upcase_returns_string
		assert_equal(String, upcase("cheese").class)
	end

	def test_upcase_returns_capital_a
		assert_equal("A", upcase("a"))
	end

	def test_upcase_returns_capital_cheese
		assert_equal("CHEESE", upcase("cheese"))
	end

	def test_upcase_returns_capital_MaRsHAlL
		assert_equal("MARSHALL", upcase("MaRsHAlL"))
	end	

	def test_insert_returns_string
		assert_equal(String, insert("cheese", 2, "i").class)
	end	

	def test_insert_returns_chzeese
		assert_equal("chzeese", insert("cheese", 2, "z"))
	end		

	def test_insert_returns_AbCdQef
		assert_equal("AbCQdef", insert("AbCdef", 3, "Q"))
	end	


end