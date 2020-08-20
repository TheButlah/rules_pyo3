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



rust_library(
    name = "indoc_impl",
    crate_type = "proc-macro",
    deps = [
        "@rules_pyo3__proc_macro2__1_0_19//:proc_macro2",
        "@rules_pyo3__quote__1_0_7//:quote",
        "@rules_pyo3__syn__1_0_38//:syn",
        "@rules_pyo3__unindent__0_1_6//:unindent",
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    proc_macro_deps = [
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

