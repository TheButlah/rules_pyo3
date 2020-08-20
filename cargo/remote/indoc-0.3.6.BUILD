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
  "notice", # MIT from expression "MIT OR Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_library",
    "rust_binary",
    "rust_test",
)


# Unsupported target "compiletest" with type "test" omitted

rust_library(
    name = "indoc",
    crate_type = "lib",
    deps = [
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    proc_macro_deps = [
        "@rules_pyo3__indoc_impl__0_3_6//:indoc_impl",
        "@rules_pyo3__proc_macro_hack__0_5_18//:proc_macro_hack",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.3.6",
    tags = ["cargo-raze"],
    crate_features = [
    ],
)

# Unsupported target "run-pass" with type "test" omitted
