test_that('regan_antiderivative returns the antideriv. of 1 / (1 + abs(x))', {
  expect_equal(regan_antiderivative(-1), -log(4) / 2)
  expect_equal(regan_antiderivative(1),   log(4) / 2)
  expect_equal(regan_antiderivative(10),  log(11))
  expect_equal(regan_antiderivative(-9), -log(10))
  expect_equal(regan_antiderivative(0), 0)
  expect_identical(regan_antiderivative(NA_real_), NA_real_)
  expect_identical(regan_antiderivative(NaN), NaN)
  expect_identical(regan_antiderivative(Inf), NaN)
})
