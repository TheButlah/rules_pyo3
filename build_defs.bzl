"""Build rules for PyO3"""

load("@io_bazel_rules_rust//rust:rust.bzl", "rust_library")
load("@rules_python//python:defs.bzl", "py_library")

def pyo3_extension(
        name,
        deps = [],
        **kwargs):
    """
    Creates a PyO3 extension.

    Args:
        name: The name of the resulting `py_library`
        deps: The dependencies of the extension, not including PyO3.
        **kwargs: Forwarded along directly to `rust_library`
    """

    name_rs = name + "_rs"
    name_so = name + ".so"

    rust_library(
        name = name_rs,
        deps = ["@rules_pyo3//:pyo3"] + deps,
        crate_type = "cdylib",
        **kwargs
    )

    native.genrule(
        name = name_so,
        srcs = [":" + name_rs],
        outs = [name_so],
        cmd = "cp $< $@",
    )

    py_library(
        name = name,
        srcs = [],
        data = [name_so],
    )