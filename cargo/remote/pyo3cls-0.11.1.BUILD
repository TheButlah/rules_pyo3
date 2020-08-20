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
  "notice", # Apache-2.0 from expression "Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)



rust_library(
    name = "pyo3cls",
    crate_type = "proc-macro",
    deps = [
        "@rules_pyo3__pyo3_derive_backend__0_11_1//:pyo3_derive_backend",
        "@rules_pyo3__quote__1_0_7//:quote",
        "@rules_pyo3__syn__1_0_38//:syn",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.11.1",
    tags = ["cargo-raze"],
    crate_features = [
    ],
)

