# AuctionsBR
Code for downloading data from ComprasNET API. It is dependent on the API ComprasNET framework, so if starts throwing 503 errors, it is a problem of the API, not (usually!!) of the R codebase.

## Installation Instructions

Initially you need to install the `devtools` suite of functions to R. 

```
install.packages("devtools")
```

Then you can do either
```
library(devtools)
install_github("claudiolucinda/AuctionsBR")
```

Or
```
devtools::install_github("claudiolucinda\AuctionsBR")
```
