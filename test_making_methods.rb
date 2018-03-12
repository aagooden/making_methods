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

	def test_array_delete_returns_array
		assert_equal(Array, delete(["a", "b", "c", "d", "b", "e", "b"], "b").class)
	end		

	def test_array_delete_returns_array_without_b
		assert_equal(["a", "c", "d", "e"], delete(["a", "b", "c", "d", "b", "e", "b"], "b"))
	end	

	def test_array_delete_returns_array_without_3
		assert_equal([1,2,4,5,6,7,9], delete([1,2,3,4,3,5,6,7,3,9], 3))
	end	

	def test_join_returns_string
		assert_equal(String, join(["a", "b", "c"]).class)
	end	

	def test_join_returns_string_joined
		assert_equal("abc", join(["a", "b", "c"]))
	end		

	def test_join_returns_numbers_joined
		assert_equal("123", join([1,2,3]))
	end		

	def test_pop_returns_string
		assert_equal(String, pop(["a", "b", "c"]).class)
	end	

	def test_pop_returns_nil_if_array_empty
		assert_equal(nil, pop([]))
	end	

	def test_pop_returns_c
		assert_equal("c", pop(["a", "b", "c"]))
	end	

	def test_pop_returns_3
		assert_equal("3", pop([1,2,3]))
	end	



end