load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_python():
    git_repository(
        name = "rules_python",
        remote = "https://github.com/bazelbuild/rules_python.git",
        tag = "0.31.0",
    )

def rules_pkg():
    git_repository(
        name = "rules_pkg",
        remote = "https://github.com/bazelbuild/rules_pkg",
        tag = "0.9.1",
    )

def rules_kotlin():
    http_archive(
        name = "io_bazel_rules_kotlin",
        sha256 = "5766f1e599acf551aa56f49dab9ab9108269b03c557496c54acaf41f98e2b8d6",
        url = "https://github.com/bazelbuild/rules_kotlin/releases/download/v1.9.0/rules_kotlin-v1.9.0.tar.gz",
    )

def rules_jvm_external():
    http_archive(
        name = "rules_jvm_external",
        strip_prefix = "rules_jvm_external-3.2",
        sha256 = "82262ff4223c5fda6fb7ff8bd63db8131b51b413d26eb49e3131037e79e324af",
        url = "https://github.com/bazelbuild/rules_jvm_external/archive/3.2.zip",
    )

def rules_rust():
    http_archive(
        name = "rules_rust",
        sha256 = "9d04e658878d23f4b00163a72da3db03ddb451273eb347df7d7c50838d698f49",
        urls = ["https://github.com/bazelbuild/rules_rust/releases/download/0.26.0/rules_rust-v0.26.0.tar.gz"],
    )
