"""
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""
package(default_visibility = [
  # Public for visibility by "@raze__crate__version//" targets.
  #
  # Prefer access through "//cargo", which limits external
  # visibility to explicit Cargo.toml dependencies.
  "//visibility:public",
])

licenses([
  "notice", # Apache-2.0 from expression "Apache-2.0 OR MIT"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "parking_lot_core",
    crate_type = "lib",
    deps = [
        "@rules_pyo3__cfg_if__0_1_10//:cfg_if",
        "@rules_pyo3__instant__0_1_6//:instant",
        "@rules_pyo3__libc__0_2_76//:libc",
        "@rules_pyo3__smallvec__1_4_2//:smallvec",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.8.0",
    tags = ["cargo-raze"],
    crate_features = [
    ],
)

