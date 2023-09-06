
# This file has been generated using `bazel run scripts:pinned_browsers`

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//common/private:dmg_archive.bzl", "dmg_archive")
load("//common/private:drivers.bzl", "local_drivers")
load("//common/private:pkg_archive.bzl", "pkg_archive")

def pin_browsers():
    local_drivers()

    http_archive(
        name = "linux_firefox",
        url = "https://ftp.mozilla.org/pub/firefox/releases/117.0/linux-x86_64/en-US/firefox-117.0.tar.bz2",
        sha256 = "5acf61aed42bbf43dff8fee90c55fd3bcecb1c710b86cdd2c380b5e4db7f3998",
        build_file_content = """
filegroup(
    name = "files",
    srcs = glob(["**/*"]),
    visibility = ["//visibility:public"],
)

exports_files(
    ["firefox/firefox"],
)
""",
    )


    dmg_archive(
        name = "mac_firefox",
        url = "https://ftp.mozilla.org/pub/firefox/releases/117.0/mac/en-US/Firefox%20117.0.dmg",
        sha256 = "eb9fcd6a7ea0feb56d64795367c32a1faea93db113d40b7a6b93e178af56e258",
        build_file_content = "exports_files([\"Firefox.app\"])",
    )


    http_archive(
        name = "linux_geckodriver",
        url = "https://github.com/mozilla/geckodriver/releases/download/v0.33.0/geckodriver-v0.33.0-linux64.tar.gz",
        sha256 = "5f5e89bb31fe5f55f963f56ef7e55a5c8e9dc415d94b1ddc539171a327b8e6c4",
        build_file_content = "exports_files([\"geckodriver\"])",
    )
    
    http_archive(
        name = "mac_geckodriver",
        url = "https://github.com/mozilla/geckodriver/releases/download/v0.33.0/geckodriver-v0.33.0-macos.tar.gz",
        sha256 = "a39c72553beae18c58a560c84cfe86c1708d101bb3d57b8744e3eca64f403703",
        build_file_content = "exports_files([\"geckodriver\"])",
    )
        
    pkg_archive(
        name = "mac_edge",
        url = "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/477dac01-7a9f-4230-bf3b-5fae4b50ca49/MicrosoftEdge-116.0.1938.69.pkg",
        sha256 = "62b45a6c90bd26e35efb4ae355ea24077097ac922bd2b7583e048da4571492dd",
        move = {
            "MicrosoftEdge-116.0.1938.69.pkg/Payload/Microsoft Edge.app": "Edge.app",
        },
        build_file_content = "exports_files([\"Edge.app\"])",
    )

    http_archive(
        name = "linux_edgedriver",
        url = "https://msedgedriver.azureedge.net/116.0.1938.69/edgedriver_linux64.zip",
        sha256 = "017d5245c4682c044685741a7544050630861014a17a2b578752c7eb82210257",
        build_file_content = "exports_files([\"msedgedriver\"])",
    )
    
    http_archive(
        name = "mac_edgedriver",
        url = "https://msedgedriver.azureedge.net/116.0.1938.69/edgedriver_mac64.zip",
        sha256 = "60628b54be3bab35058b445001ac5d9a1f1cb7936d47f87e680fae8e248ecd46",
        build_file_content = "exports_files([\"msedgedriver\"])",
    )
    
    http_archive(
        name = "linux_chrome",
        url = "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/116.0.5845.96/linux64/chrome-linux64.zip",
        sha256 = "5d8ab1f999071b213d85e46ea4505d99df818b6fd0f8449e79710cb5403ba858",
        build_file_content = """
filegroup(
    name = "files",
    srcs = glob(["**/*"]),
    visibility = ["//visibility:public"],
)

exports_files(
    ["chrome-linux64/chrome"],
)
""",
    )


    http_archive(
        name = "mac_chrome",
        url = "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/116.0.5845.96/mac-x64/chrome-mac-x64.zip",
        sha256 = "edc8e78f7a4b618037067593b2cb79ff571c16da0b955bc05a500af34b77d2fe",
        strip_prefix = "chrome-mac-x64",
        patch_cmds = [
            "mv 'Google Chrome for Testing.app' Chrome.app",
            "mv 'Chrome.app/Contents/MacOS/Google Chrome for Testing' Chrome.app/Contents/MacOS/Chrome",
        ],
        build_file_content = "exports_files([\"Google Chrome for Testing.app\"])",
    )


    http_archive(
        name = "linux_chromedriver",
        url = "https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip",
        sha256 = "a7787ef8b139170cab4abfca4a0284fd5d006bfd979624b4af25b64d583a6f44",
        build_file_content = "exports_files([\"chromedriver\"])",
    )
    
    http_archive(
        name = "mac_chromedriver",
        url = "https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_mac64.zip",
        sha256 = "6abdc9d358c2bc4668bef7b23048de2a9dbd3ad82cfbc6dfe322e74d4cff1650",
        build_file_content = "exports_files([\"chromedriver\"])",
    )
    
