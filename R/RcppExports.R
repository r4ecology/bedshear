# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

velocity <- function(h, Hs_V, Px_V, switch1_V) {
    .Call(`_bedshear_velocity`, h, Hs_V, Px_V, switch1_V)
}

stress <- function(h, D50, mu_V, phic_V, Hs_V, Px_V, switch1, phiw_V) {
    .Call(`_bedshear_stress`, h, D50, mu_V, phic_V, Hs_V, Px_V, switch1, phiw_V)
}

