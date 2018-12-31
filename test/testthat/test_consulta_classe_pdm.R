context("Checando se Funciona")
library(AuctionsBR)

test_that(
  expect_equal(is.data.frame(consulta_classe_pdm(3899)),TRUE)
)
