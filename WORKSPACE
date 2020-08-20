load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

##################
# Rust Toolchain #
##################

http_archive(
    name = "io_bazel_rules_rust",
    sha256 = "83727c04706f441f8dfbfd262b0c69e19764a93ce9700167b1bdcf5831bf65e8",
    strip_prefix = "rules_rust-fdf9655ba95616e0314b4e0ebab40bb0c5fe005c",
    urls = [
        # Master branch as of 2020-8-18
        "https://github.com/bazelbuild/rules_rust/archive/fdf9655ba95616e0314b4e0ebab40bb0c5fe005c.zip",
    ],
)

http_archive(
    name = "bazel_skylib",
    sha256 = "9a737999532daca978a158f94e77e9af6a6a169709c0cee274f0a4c3359519bd",
    strip_prefix = "bazel-skylib-1.0.0",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/1.0.0.tar.gz",
)

load("@io_bazel_rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories(
    edition = "2018",
    iso_date = "2020-08-18",
    #rustfmt_version = "1.4.19",
    version = "nightly",
)

load("@io_bazel_rules_rust//:workspace.bzl", "bazel_version")

bazel_version(name = "bazel_version")

#######################
# PyO3 via Cargo-Raze #
#######################

load("//cargo:crates.bzl", "rules_pyo3_fetch_remote_crates")

rules_pyo3_fetch_remote_crates()
