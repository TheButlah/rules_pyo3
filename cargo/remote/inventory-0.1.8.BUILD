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


# Unsupported target "build-script-build" with type "custom-build" omitted
# Unsupported target "flags" with type "example" omitted

rust_library(
    name = "inventory",
    crate_type = "lib",
    deps = [
    ],
    srcs = glob(["**/*.rs"]),
    crate_root = "src/lib.rs",
    edition = "2018",
    proc_macro_deps = [
        "@rules_pyo3__ctor__0_1_15//:ctor",
        "@rules_pyo3__ghost__0_1_2//:ghost",
        "@rules_pyo3__inventory_impl__0_1_8//:inventory_impl",
    ],
    rustc_flags = [
        "--cap-lints=allow",
    ],
    version = "0.1.8",
    tags = ["cargo-raze"],
    crate_features = [
    ],
)

