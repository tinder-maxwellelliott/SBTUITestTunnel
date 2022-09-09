load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "043897b483781cfd6cbd521569bfee339c8fbb2ad0f0bdcd1b3749523a262cf4",
    url = "https://github.com/bazelbuild/rules_swift/releases/download/1.1.1/rules_swift.1.1.1.tar.gz",
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

http_archive(
    name = "com_github_subito_it_gcdwebserver",
    url = "https://github.com/Subito-it/GCDWebServer/archive/refs/tags/4.0.0.tar.gz",
    sha256 = "1c649f272505d5dc61669ab6ef94cd972b35bb9aad052950df8e6a31db022d99",
    strip_prefix = "GCDWebServer-4.0.0",
    build_file_content = """
objc_library(
    name = "GCDWebServer",
    module_name = "GCDWebServer",
    hdrs = glob([
        "GCDWebServer/**/*.h"
    ], allow_empty = False),
    srcs = glob([
        "GCDWebServer/**/*.m"
    ], allow_empty = False),
    visibility = ["//visibility:public"],
    includes = [
        "GCDWebServer/Core",
        "GCDWebServer/Requests",
        "GCDWebServer/Responses",
    ],
    copts = [
        "-Wno-deprecated-declarations"
    ]
)
    """
)
