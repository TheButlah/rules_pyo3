workspace(name = "rules_pyo3")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

################
# Python Rules #
################

http_archive(
    name = "rules_python",
    sha256 = "b6d46438523a3ec0f3cead544190ee13223a52f6a6765a29eae7b7cc24cc83a0",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.1.0/rules_python-0.1.0.tar.gz",
)

##############
# Rust Rules #
##############

http_archive(
    name = "rules_rust",
    sha256 = "994435ca2c874d92c169388019e04ad1c1b11649dede40180f25a15bce0b3115",
    strip_prefix = "rules_rust-920256900c367357bf4dae5719b8ebf210e91a0f",
    urls = [
        # Master branch as of 2021-3-23
        "https://github.com/bazelbuild/rules_rust/archive/920256900c367357bf4dae5719b8ebf210e91a0f.zip",
    ],
)

http_archive(
    name = "bazel_skylib",
    sha256 = "9a737999532daca978a158f94e77e9af6a6a169709c0cee274f0a4c3359519bd",
    strip_prefix = "bazel-skylib-1.0.0",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/1.0.0.tar.gz",
)

load("@rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories(edition = "2018")

#######################
# PyO3 via Cargo-Raze #
#######################

load("//cargo:crates.bzl", "rules_pyo3_fetch_remote_crates")

rules_pyo3_fetch_remote_crates()

#################
# Example Repos #
#################

local_repository(
    name = "example",
    path = "example",
)
