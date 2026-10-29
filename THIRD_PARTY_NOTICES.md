<!--
Copyright (c) 2022 Nitro Agility S.r.l.
SPDX-License-Identifier: Apache-2.0
-->

# Third-Party Notices

Permguard Admin includes the third-party packages listed below, each under its own licence.

This file is generated from the resolved dependencies of the application: the Rust core linked into the executable, and the web interface embedded in it.
Do not edit it by hand: run `task notices` instead.

Development dependencies are excluded: a notice covers what is distributed, and a build toolchain or a test harness is not.
Rust build dependencies are included, because build-script terms travel with the artifact they helped produce.

Licences are the SPDX expressions each package declares.
Where a package declares none, the entry says so and its source is the authority.

## Rust packages

690 packages, linked into the executable.

| Package | Version | Licence | Source |
| ------- | ------- | ------- | ------ |
| `adler2` | 2.0.1 | 0BSD OR MIT OR Apache-2.0 | https://github.com/oyvindln/adler2 |
| `ahash` | 0.8.12 | MIT OR Apache-2.0 | https://github.com/tkaitchuck/ahash |
| `aho-corasick` | 1.1.5 | Unlicense OR MIT | https://github.com/BurntSushi/aho-corasick |
| `alloc-no-stdlib` | 3.0.0 | BSD-3-Clause | https://github.com/dropbox/rust-alloc-no-stdlib |
| `alloc-stdlib` | 0.3.0 | BSD-3-Clause | https://github.com/dropbox/rust-alloc-no-stdlib |
| `allocator-api2` | 0.2.21 | MIT OR Apache-2.0 | https://github.com/zakarumych/allocator-api2 |
| `android_system_properties` | 0.1.6 | MIT OR Apache-2.0 | https://github.com/nical/android_system_properties |
| `anstream` | 1.0.0 | MIT OR Apache-2.0 | https://github.com/rust-cli/anstyle.git |
| `anstyle` | 1.0.14 | MIT OR Apache-2.0 | https://github.com/rust-cli/anstyle.git |
| `anstyle-parse` | 1.0.0 | MIT OR Apache-2.0 | https://github.com/rust-cli/anstyle.git |
| `anstyle-query` | 1.1.5 | MIT OR Apache-2.0 | https://github.com/rust-cli/anstyle.git |
| `anstyle-wincon` | 3.0.11 | MIT OR Apache-2.0 | https://github.com/rust-cli/anstyle.git |
| `anyhow` | 1.0.104 | MIT OR Apache-2.0 | https://github.com/dtolnay/anyhow |
| `ar_archive_writer` | 0.5.3 | Apache-2.0 WITH LLVM-exception | https://github.com/rust-lang/ar_archive_writer |
| `arc-swap` | 1.9.3 | MIT OR Apache-2.0 | https://github.com/vorner/arc-swap |
| `arrayvec` | 0.5.2 | MIT/Apache-2.0 | https://github.com/bluss/arrayvec |
| `arrayvec` | 0.7.8 | MIT OR Apache-2.0 | https://github.com/bluss/arrayvec |
| `ascii-canvas` | 4.0.0 | Apache-2.0/MIT | https://github.com/lalrpop/ascii-canvas |
| `asn1-rs` | 0.7.2 | MIT OR Apache-2.0 | https://github.com/rusticata/asn1-rs.git |
| `asn1-rs-derive` | 0.6.0 | MIT OR Apache-2.0 | https://github.com/rusticata/asn1-rs.git |
| `asn1-rs-impl` | 0.2.0 | MIT/Apache-2.0 | https://github.com/rusticata/asn1-rs.git |
| `async-trait` | 0.1.92 | MIT OR Apache-2.0 | https://github.com/dtolnay/async-trait |
| `atk` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `atk-sys` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `atomic-waker` | 1.1.2 | Apache-2.0 OR MIT | https://github.com/smol-rs/atomic-waker |
| `autocfg` | 1.5.1 | Apache-2.0 OR MIT | https://github.com/cuviper/autocfg |
| `axum` | 0.8.9 | MIT | https://github.com/tokio-rs/axum |
| `axum-core` | 0.5.6 | MIT | https://github.com/tokio-rs/axum |
| `axum-server` | 0.8.0 | MIT | https://github.com/programatik29/axum-server |
| `base64` | 0.21.7 | MIT OR Apache-2.0 | https://github.com/marshallpierce/rust-base64 |
| `base64` | 0.22.1 | MIT OR Apache-2.0 | https://github.com/marshallpierce/rust-base64 |
| `base64` | 0.23.1 | MIT OR Apache-2.0 | https://github.com/marshallpierce/rust-base64 |
| `bit-set` | 0.8.0 | Apache-2.0 OR MIT | https://github.com/contain-rs/bit-set |
| `bit-vec` | 0.8.0 | Apache-2.0 OR MIT | https://github.com/contain-rs/bit-vec |
| `bit-vec` | 0.9.1 | Apache-2.0 OR MIT | https://github.com/contain-rs/bit-vec |
| `bitflags` | 1.3.2 | MIT/Apache-2.0 | https://github.com/bitflags/bitflags |
| `bitflags` | 2.13.2 | MIT OR Apache-2.0 | https://github.com/bitflags/bitflags |
| `block-buffer` | 0.10.4 | MIT OR Apache-2.0 | https://github.com/RustCrypto/utils |
| `block-buffer` | 0.12.1 | MIT OR Apache-2.0 | https://github.com/RustCrypto/utils |
| `block2` | 0.6.2 | MIT | https://github.com/madsmtm/objc2 |
| `borrow-or-share` | 0.2.4 | MIT-0 | https://github.com/yescallop/borrow-or-share |
| `borsh` | 1.8.1 | MIT OR Apache-2.0 | https://github.com/near/borsh-rs |
| `borsh-derive` | 1.8.1 | Apache-2.0 | https://github.com/near/borsh-rs |
| `brotli` | 9.1.1 | BSD-3-Clause AND MIT | https://github.com/dropbox/rust-brotli |
| `brotli-decompressor` | 6.2.0 | BSD-3-Clause/MIT | https://github.com/dropbox/rust-brotli-decompressor |
| `bs58` | 0.5.1 | MIT/Apache-2.0 | https://github.com/Nullus157/bs58-rs |
| `bstr` | 1.13.1 | MIT OR Apache-2.0 | https://github.com/BurntSushi/bstr |
| `bumpalo` | 3.20.3 | MIT OR Apache-2.0 | https://github.com/fitzgen/bumpalo |
| `bytecount` | 0.6.9 | Apache-2.0/MIT | https://github.com/llogiq/bytecount |
| `bytemuck` | 1.25.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/Lokathor/bytemuck |
| `byteorder` | 1.5.0 | Unlicense OR MIT | https://github.com/BurntSushi/byteorder |
| `bytes` | 1.12.1 | MIT | https://github.com/tokio-rs/bytes |
| `cairo-rs` | 0.18.5 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `cairo-sys-rs` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `camino` | 1.2.6 | MIT OR Apache-2.0 | https://github.com/camino-rs/camino |
| `cargo-platform` | 0.1.9 | MIT OR Apache-2.0 | https://github.com/rust-lang/cargo |
| `cargo_metadata` | 0.19.2 | MIT | https://github.com/oli-obk/cargo_metadata |
| `cargo_toml` | 1.0.1 | Apache-2.0 OR MIT | https://gitlab.com/lib.rs/cargo_toml |
| `castaway` | 0.2.4 | MIT | https://github.com/sagebind/castaway |
| `cc` | 1.10.0 | MIT OR Apache-2.0 | https://github.com/rust-lang/cc-rs |
| `cedar-policy` | 4.11.0 | Apache-2.0 | https://github.com/cedar-policy/cedar |
| `cedar-policy-core` | 4.11.0 | Apache-2.0 | https://github.com/cedar-policy/cedar |
| `cedar-policy-formatter` | 4.11.0 | Apache-2.0 | https://github.com/cedar-policy/cedar |
| `cedar-policy-mcp-schema-generator` | 0.6.1 | Apache-2.0 | https://github.com/cedar-policy/cedar-for-agents |
| `cesu8` | 1.1.0 | Apache-2.0/MIT | https://github.com/emk/cesu8-rs |
| `cfb` | 0.14.0 | MIT | https://github.com/mdsteele/rust-cfb |
| `cfg-expr` | 0.15.8 | MIT OR Apache-2.0 | https://github.com/EmbarkStudios/cfg-expr |
| `cfg-if` | 1.0.5 | MIT OR Apache-2.0 | https://github.com/rust-lang/cfg-if |
| `cfg_aliases` | 0.2.2 | MIT | https://github.com/katharostech/cfg_aliases |
| `chacha20` | 0.10.2 | MIT OR Apache-2.0 | https://github.com/RustCrypto/stream-ciphers |
| `chrono` | 0.4.45 | MIT OR Apache-2.0 | https://github.com/chronotope/chrono |
| `chrono-tz` | 0.10.4 | MIT OR Apache-2.0 | https://github.com/chronotope/chrono-tz |
| `clap` | 4.6.7 | MIT OR Apache-2.0 | https://github.com/clap-rs/clap |
| `clap_builder` | 4.6.7 | MIT OR Apache-2.0 | https://github.com/clap-rs/clap |
| `clap_complete` | 4.6.11 | MIT OR Apache-2.0 | https://github.com/clap-rs/clap |
| `clap_derive` | 4.6.7 | MIT OR Apache-2.0 | https://github.com/clap-rs/clap |
| `clap_lex` | 1.1.1 | MIT OR Apache-2.0 | https://github.com/clap-rs/clap |
| `cmov` | 0.5.4 | Apache-2.0 OR MIT | https://github.com/RustCrypto/utils |
| `cobs` | 0.3.0 | MIT OR Apache-2.0 | https://github.com/jamesmunns/cobs.rs |
| `colorchoice` | 1.0.5 | MIT OR Apache-2.0 | https://github.com/rust-cli/anstyle.git |
| `combine` | 4.6.9 | MIT | https://github.com/Marwes/combine |
| `compact_str` | 0.10.0 | MIT | https://github.com/ParkMyCar/compact_str |
| `const-oid` | 0.10.2 | Apache-2.0 OR MIT | https://github.com/RustCrypto/formats |
| `const-random` | 0.1.18 | MIT OR Apache-2.0 | https://github.com/tkaitchuck/constrandom |
| `const-random-macro` | 0.1.16 | MIT OR Apache-2.0 | https://github.com/tkaitchuck/constrandom |
| `convert_case` | 0.4.0 | MIT | https://github.com/rutrum/convert-case |
| `cookie` | 0.18.2 | MIT OR Apache-2.0 | https://github.com/SergioBenitez/cookie-rs |
| `core-foundation` | 0.10.1 | MIT OR Apache-2.0 | https://github.com/servo/core-foundation-rs |
| `core-foundation-sys` | 0.8.7 | MIT OR Apache-2.0 | https://github.com/servo/core-foundation-rs |
| `core-graphics` | 0.25.0 | MIT OR Apache-2.0 | https://github.com/servo/core-foundation-rs |
| `core-graphics-types` | 0.2.0 | MIT OR Apache-2.0 | https://github.com/servo/core-foundation-rs |
| `cpufeatures` | 0.2.17 | MIT OR Apache-2.0 | https://github.com/RustCrypto/utils |
| `cpufeatures` | 0.3.1 | MIT OR Apache-2.0 | https://github.com/RustCrypto/utils |
| `crc32fast` | 1.5.3 | MIT OR Apache-2.0 | https://github.com/srijs/rust-crc32fast |
| `crossbeam-channel` | 0.5.17 | MIT OR Apache-2.0 | https://github.com/crossbeam-rs/crossbeam |
| `crossbeam-utils` | 0.8.23 | MIT OR Apache-2.0 | https://github.com/crossbeam-rs/crossbeam |
| `crunchy` | 0.2.4 | MIT | https://github.com/eira-fransham/crunchy |
| `crypto-common` | 0.1.7 | MIT OR Apache-2.0 | https://github.com/RustCrypto/traits |
| `crypto-common` | 0.2.2 | MIT OR Apache-2.0 | https://github.com/RustCrypto/traits |
| `cssparser` | 0.37.0 | MPL-2.0 | https://github.com/servo/rust-cssparser |
| `cssparser-macros` | 0.7.1 | MPL-2.0 | https://github.com/servo/rust-cssparser |
| `ctor` | 1.0.13 | Apache-2.0 OR MIT | https://github.com/mmastrac/linktime |
| `ctutils` | 0.4.6 | Apache-2.0 OR MIT | https://github.com/RustCrypto/utils |
| `darling` | 0.24.1 | MIT | https://github.com/TedDriggs/darling |
| `darling_core` | 0.24.1 | MIT | https://github.com/TedDriggs/darling |
| `darling_macro` | 0.24.1 | MIT | https://github.com/TedDriggs/darling |
| `data-encoding` | 2.11.1 | MIT | https://github.com/ia0/data-encoding |
| `dbus` | 0.9.12 | Apache-2.0/MIT | https://github.com/diwic/dbus-rs |
| `defmt` | 1.2.0 | MIT OR Apache-2.0 | https://github.com/knurling-rs/defmt |
| `defmt-macros` | 1.2.0 | MIT OR Apache-2.0 | https://github.com/knurling-rs/defmt |
| `defmt-parser` | 1.1.0 | MIT OR Apache-2.0 | https://github.com/knurling-rs/defmt |
| `der-parser` | 10.0.0 | MIT OR Apache-2.0 | https://github.com/rusticata/der-parser.git |
| `deranged` | 0.5.9 | MIT OR Apache-2.0 | https://github.com/jhpratt/deranged |
| `derive_more` | 2.1.1 | MIT | https://github.com/JelteF/derive_more |
| `derive_more-impl` | 2.1.1 | MIT | https://github.com/JelteF/derive_more |
| `digest` | 0.10.7 | MIT OR Apache-2.0 | https://github.com/RustCrypto/traits |
| `digest` | 0.11.3 | MIT OR Apache-2.0 | https://github.com/RustCrypto/traits |
| `dirs` | 6.0.0 | MIT OR Apache-2.0 | https://github.com/soc/dirs-rs |
| `dirs` | 7.0.0 | MIT OR Apache-2.0 | https://codeberg.org/dirs/dirs-rs |
| `dirs-sys` | 0.5.0 | MIT OR Apache-2.0 | https://github.com/dirs-dev/dirs-sys-rs |
| `dispatch2` | 0.3.1 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `displaydoc` | 0.2.7 | MIT OR Apache-2.0 | https://github.com/yaahc/displaydoc |
| `dlopen2` | 0.8.2 | MIT | https://github.com/OpenByteDev/dlopen2 |
| `dlopen2_derive` | 0.4.3 | MIT | https://github.com/OpenByteDev/dlopen2 |
| `dogwood-language` | 1.1.0 | Apache-2.0 | https://github.com/dogwood-policy/dogwood |
| `dogwood-syntax` | 1.1.0 | Apache-2.0 | https://github.com/dogwood-policy/dogwood |
| `dom_query` | 0.28.0 | MIT | https://github.com/niklak/dom_query |
| `dpi` | 0.1.2 | Apache-2.0 AND MIT | https://github.com/rust-windowing/winit |
| `dtoa` | 1.0.11 | MIT OR Apache-2.0 | https://github.com/dtolnay/dtoa |
| `dtoa-short` | 0.3.5 | MPL-2.0 | https://github.com/upsuper/dtoa-short |
| `dunce` | 1.0.5 | CC0-1.0 OR MIT-0 OR Apache-2.0 | https://gitlab.com/kornelski/dunce |
| `dyn-clone` | 1.0.20 | MIT OR Apache-2.0 | https://github.com/dtolnay/dyn-clone |
| `educe` | 0.6.0 | MIT | https://github.com/magiclen/educe |
| `either` | 1.19.0 | MIT OR Apache-2.0 | https://github.com/rayon-rs/either |
| `email_address` | 0.2.9 | MIT | https://github.com/johnstonskj/rust-email_address.git |
| `embed-resource` | 3.0.12 | MIT | https://github.com/nabijaczleweli/rust-embed-resource |
| `embed_plist` | 1.2.2 | MIT OR Apache-2.0 | https://github.com/nvzqz/embed-plist-rs |
| `embedded-io` | 0.4.0 | MIT OR Apache-2.0 | https://github.com/embassy-rs/embedded-io |
| `embedded-io` | 0.6.1 | MIT OR Apache-2.0 | https://github.com/rust-embedded/embedded-hal |
| `ena` | 0.14.4 | MIT OR Apache-2.0 | https://github.com/rust-lang/ena |
| `enum-ordinalize` | 4.4.2 | MIT | https://github.com/magiclen/enum-ordinalize |
| `enum-ordinalize-derive` | 4.4.2 | MIT | https://github.com/magiclen/enum-ordinalize |
| `equivalent` | 1.0.3 | Apache-2.0 OR MIT | https://github.com/indexmap-rs/equivalent |
| `erased-serde` | 0.4.11 | MIT OR Apache-2.0 | https://github.com/dtolnay/erased-serde |
| `errno` | 0.3.14 | MIT OR Apache-2.0 | https://github.com/lambda-fairy/rust-errno |
| `fancy-regex` | 0.19.2 | MIT | https://github.com/fancy-regex/fancy-regex |
| `fastrand` | 2.5.0 | Apache-2.0 OR MIT | https://github.com/smol-rs/fastrand |
| `fdeflate` | 0.3.7 | MIT OR Apache-2.0 | https://github.com/image-rs/fdeflate |
| `field-offset` | 0.3.6 | MIT OR Apache-2.0 | https://github.com/Diggsey/rust-field-offset |
| `find-msvc-tools` | 0.1.15 | MIT OR Apache-2.0 | https://github.com/rust-lang/cc-rs |
| `fixedbitset` | 0.5.7 | MIT OR Apache-2.0 | https://github.com/petgraph/fixedbitset |
| `flate2` | 1.1.10 | MIT OR Apache-2.0 | https://github.com/rust-lang/flate2-rs |
| `fluent-uri` | 0.4.1 | MIT | https://github.com/yescallop/fluent-uri-rs |
| `fnv` | 1.0.7 | Apache-2.0 / MIT | https://github.com/servo/rust-fnv |
| `foldhash` | 0.1.5 | Zlib | https://github.com/orlp/foldhash |
| `foldhash` | 0.2.0 | Zlib | https://github.com/orlp/foldhash |
| `foreign-types` | 0.5.0 | MIT/Apache-2.0 | https://github.com/sfackler/foreign-types |
| `foreign-types-macros` | 0.2.4 | MIT/Apache-2.0 | https://github.com/sfackler/foreign-types |
| `foreign-types-shared` | 0.3.1 | MIT/Apache-2.0 | https://github.com/sfackler/foreign-types |
| `form_urlencoded` | 1.2.2 | MIT OR Apache-2.0 | https://github.com/servo/rust-url |
| `fraction` | 0.15.4 | MIT OR Apache-2.0 | https://github.com/dnsl48/fraction.git |
| `fraction` | 0.17.0 | MIT OR Apache-2.0 | https://github.com/dnsl48/fraction.git |
| `fs-err` | 3.3.2 | MIT OR Apache-2.0 | https://github.com/andrewhickman/fs-err |
| `futures-channel` | 0.3.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/futures-rs |
| `futures-core` | 0.3.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/futures-rs |
| `futures-executor` | 0.3.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/futures-rs |
| `futures-io` | 0.3.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/futures-rs |
| `futures-macro` | 0.3.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/futures-rs |
| `futures-sink` | 0.3.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/futures-rs |
| `futures-task` | 0.3.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/futures-rs |
| `futures-util` | 0.3.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/futures-rs |
| `gdk` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `gdk-pixbuf` | 0.18.5 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `gdk-pixbuf-sys` | 0.18.0 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `gdk-sys` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `gdkwayland-sys` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `gdkx11` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `gdkx11-sys` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `generic-array` | 0.14.7 | MIT | https://github.com/fizyk20/generic-array.git |
| `getrandom` | 0.2.17 | MIT OR Apache-2.0 | https://github.com/rust-random/getrandom |
| `getrandom` | 0.3.4 | MIT OR Apache-2.0 | https://github.com/rust-random/getrandom |
| `getrandom` | 0.4.3 | MIT OR Apache-2.0 | https://github.com/rust-random/getrandom |
| `gio` | 0.18.4 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `gio-sys` | 0.18.1 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `glib` | 0.18.5 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `glib-macros` | 0.18.5 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `glib-sys` | 0.18.1 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `glob` | 0.3.4 | MIT OR Apache-2.0 | https://github.com/rust-lang/glob |
| `globset` | 0.4.21 | Unlicense OR MIT | https://github.com/BurntSushi/ripgrep/tree/master/crates/globset |
| `gobject-sys` | 0.18.0 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `gtk` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `gtk-sys` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `gtk3-macros` | 0.18.2 | MIT | https://github.com/gtk-rs/gtk3-rs |
| `h2` | 0.4.20 | MIT | https://github.com/hyperium/h2 |
| `hashbrown` | 0.12.3 | MIT OR Apache-2.0 | https://github.com/rust-lang/hashbrown |
| `hashbrown` | 0.15.5 | MIT OR Apache-2.0 | https://github.com/rust-lang/hashbrown |
| `hashbrown` | 0.17.1 | MIT OR Apache-2.0 | https://github.com/rust-lang/hashbrown |
| `heck` | 0.4.1 | MIT OR Apache-2.0 | https://github.com/withoutboats/heck |
| `heck` | 0.5.0 | MIT OR Apache-2.0 | https://github.com/withoutboats/heck |
| `hex` | 0.4.3 | MIT OR Apache-2.0 | https://github.com/KokaKiwi/rust-hex |
| `hmac` | 0.13.0 | MIT OR Apache-2.0 | https://github.com/RustCrypto/MACs |
| `html5ever` | 0.39.0 | MIT OR Apache-2.0 | https://github.com/servo/html5ever |
| `http` | 1.5.0 | MIT OR Apache-2.0 | https://github.com/hyperium/http |
| `http-body` | 1.1.0 | MIT | https://github.com/hyperium/http-body |
| `http-body-util` | 0.1.5 | MIT | https://github.com/hyperium/http-body |
| `httparse` | 1.10.1 | MIT OR Apache-2.0 | https://github.com/seanmonstar/httparse |
| `httpdate` | 1.0.3 | MIT OR Apache-2.0 | https://github.com/pyfisch/httpdate |
| `hybrid-array` | 0.4.15 | MIT OR Apache-2.0 | https://github.com/RustCrypto/hybrid-array |
| `hyper` | 1.12.0 | MIT | https://github.com/hyperium/hyper |
| `hyper-rustls` | 0.27.10 | Apache-2.0 OR ISC OR MIT | https://github.com/rustls/hyper-rustls |
| `hyper-timeout` | 0.5.2 | MIT OR Apache-2.0 | https://github.com/hjr3/hyper-timeout |
| `hyper-util` | 0.1.21 | MIT | https://github.com/hyperium/hyper-util |
| `iana-time-zone` | 0.1.65 | MIT OR Apache-2.0 | https://github.com/strawlab/iana-time-zone |
| `iana-time-zone-haiku` | 0.1.2 | MIT OR Apache-2.0 | https://github.com/strawlab/iana-time-zone |
| `ico` | 0.6.0 | MIT | https://github.com/mdsteele/rust-ico |
| `icu_collections` | 2.1.1 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `icu_locale_core` | 2.1.1 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `icu_normalizer` | 2.1.1 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `icu_normalizer_data` | 2.1.1 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `icu_properties` | 2.1.2 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `icu_properties_data` | 2.1.2 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `icu_provider` | 2.1.1 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `ident_case` | 1.0.1 | MIT/Apache-2.0 | https://github.com/TedDriggs/ident_case |
| `idna` | 1.1.0 | MIT OR Apache-2.0 | https://github.com/servo/rust-url/ |
| `idna_adapter` | 1.2.1 | Apache-2.0 OR MIT | https://github.com/hsivonen/idna_adapter |
| `indexmap` | 1.9.3 | Apache-2.0 OR MIT | https://github.com/bluss/indexmap |
| `indexmap` | 2.14.2 | Apache-2.0 OR MIT | https://github.com/indexmap-rs/indexmap |
| `infer` | 0.22.0 | MIT | https://github.com/bojand/infer |
| `ipnet` | 2.12.2 | MIT OR Apache-2.0 | https://github.com/krisprice/ipnet |
| `is_terminal_polyfill` | 1.70.2 | MIT OR Apache-2.0 | https://github.com/polyfill-rs/is_terminal_polyfill |
| `iso8601` | 0.6.6 | MIT | https://github.com/badboy/iso8601 |
| `itertools` | 0.14.0 | MIT OR Apache-2.0 | https://github.com/rust-itertools/itertools |
| `itoa` | 1.0.18 | MIT OR Apache-2.0 | https://github.com/dtolnay/itoa |
| `javascriptcore-rs` | 1.1.2 | MIT | https://github.com/tauri-apps/javascriptcore-rs |
| `javascriptcore-rs-sys` | 1.1.1 | MIT | https://github.com/tauri-apps/javascriptcore-rs |
| `jiff` | 0.2.38 | Unlicense OR MIT | https://github.com/BurntSushi/jiff |
| `jiff-core` | 0.1.1 | Unlicense OR MIT | https://github.com/BurntSushi/jiff |
| `jiff-static` | 0.2.38 | Unlicense OR MIT | https://github.com/BurntSushi/jiff |
| `jiff-tzdb` | 0.1.9 | Unlicense OR MIT | https://github.com/BurntSushi/jiff |
| `jiff-tzdb-platform` | 0.1.3 | Unlicense OR MIT | https://github.com/BurntSushi/jiff |
| `jni` | 0.21.1 | MIT/Apache-2.0 | https://github.com/jni-rs/jni-rs |
| `jni-sys` | 0.3.1 | MIT OR Apache-2.0 | https://github.com/jni-rs/jni-sys |
| `jni-sys` | 0.4.1 | MIT OR Apache-2.0 | https://github.com/jni-rs/jni-sys |
| `jni-sys-macros` | 0.4.1 | MIT OR Apache-2.0 | https://github.com/jni-rs/jni-sys |
| `js-sys` | 0.3.106 | MIT OR Apache-2.0 | https://github.com/wasm-bindgen/wasm-bindgen/tree/master/crates/js-sys |
| `json-patch` | 4.2.0 | MIT/Apache-2.0 | https://github.com/idubrov/json-patch |
| `jsonptr` | 0.7.1 | MIT OR Apache-2.0 | https://github.com/chanced/jsonptr |
| `jsonschema` | 0.49.9 | MIT | https://github.com/Stranger6667/jsonschema |
| `jsonschema` | 0.59.0 | MIT | https://github.com/Stranger6667/jsonschema |
| `jsonschema-regex` | 0.49.9 | MIT | https://github.com/Stranger6667/jsonschema |
| `jsonschema-regex` | 0.59.0 | MIT | https://github.com/Stranger6667/jsonschema |
| `jsonschema-value` | 0.49.9 | MIT | https://github.com/Stranger6667/jsonschema |
| `jsonschema-value` | 0.59.0 | MIT | https://github.com/Stranger6667/jsonschema |
| `keccak` | 0.1.6 | Apache-2.0 OR MIT | https://github.com/RustCrypto/sponges/tree/master/keccak |
| `keyboard-types` | 0.8.3 | MIT OR Apache-2.0 | https://github.com/rust-windowing/keyboard-types |
| `lalrpop` | 0.22.2 | Apache-2.0 OR MIT | https://github.com/lalrpop/lalrpop |
| `lalrpop-util` | 0.22.2 | Apache-2.0 OR MIT | https://github.com/lalrpop/lalrpop |
| `lazy_static` | 1.5.1 | MIT OR Apache-2.0 | https://github.com/rust-lang-nursery/lazy-static.rs |
| `libappindicator` | 0.9.0 | Apache-2.0 OR MIT | — |
| `libappindicator-sys` | 0.9.0 | Apache-2.0 OR MIT | — |
| `libc` | 0.2.191 | MIT OR Apache-2.0 | https://github.com/rust-lang/libc |
| `libdbus-sys` | 0.2.7 | Apache-2.0/MIT | https://github.com/diwic/dbus-rs |
| `libloading` | 0.7.4 | ISC | https://github.com/nagisa/rust_libloading/ |
| `libredox` | 0.1.25 | MIT | https://gitlab.redox-os.org/redox-os/libredox.git |
| `libyaml-rs` | 0.3.0 | MIT | https://github.com/yaml/libyaml-rs |
| `linked-hash-map` | 0.5.6 | MIT/Apache-2.0 | https://github.com/contain-rs/linked-hash-map |
| `linked_hash_set` | 0.1.6 | Apache-2.0 | https://github.com/alexheretic/linked-hash-set |
| `linux-raw-sys` | 0.12.1 | Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT | https://github.com/sunfishcode/linux-raw-sys |
| `litemap` | 0.8.3 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `lock_api` | 0.4.14 | MIT OR Apache-2.0 | https://github.com/Amanieu/parking_lot |
| `log` | 0.4.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/log |
| `logos` | 0.16.1 | MIT OR Apache-2.0 | https://github.com/maciejhirsz/logos |
| `logos-codegen` | 0.16.1 | MIT OR Apache-2.0 | https://github.com/maciejhirsz/logos |
| `logos-derive` | 0.16.1 | MIT OR Apache-2.0 | https://github.com/maciejhirsz/logos |
| `lru` | 0.18.5 | MIT | https://github.com/jeromefroe/lru-rs.git |
| `lru-slab` | 0.1.3 | MIT OR Apache-2.0 OR Zlib | https://github.com/Ralith/lru-slab |
| `markup5ever` | 0.39.0 | MIT OR Apache-2.0 | https://github.com/servo/html5ever |
| `matchit` | 0.8.4 | MIT AND BSD-3-Clause | https://github.com/ibraheemdev/matchit |
| `mcp-tools-sdk` | 0.4.1 | Apache-2.0 | https://github.com/cedar-policy/cedar-for-agents |
| `memchr` | 2.8.3 | Unlicense OR MIT | https://github.com/BurntSushi/memchr |
| `memoffset` | 0.9.1 | MIT | https://github.com/Gilnaa/memoffset |
| `micromap` | 0.3.0 | MIT | https://github.com/yegor256/micromap |
| `miette` | 7.6.0 | Apache-2.0 | https://github.com/zkat/miette |
| `miette-derive` | 7.6.0 | Apache-2.0 | https://github.com/zkat/miette |
| `mime` | 0.3.17 | MIT OR Apache-2.0 | https://github.com/hyperium/mime |
| `minimal-lexical` | 0.2.1 | MIT/Apache-2.0 | https://github.com/Alexhuszagh/minimal-lexical |
| `miniz_oxide` | 0.8.9 | MIT OR Zlib OR Apache-2.0 | https://github.com/Frommi/miniz_oxide/tree/master/miniz_oxide |
| `miniz_oxide` | 0.9.1 | MIT OR Zlib OR Apache-2.0 | https://github.com/Frommi/miniz_oxide/tree/master/miniz_oxide |
| `mio` | 1.2.4 | MIT | https://github.com/tokio-rs/mio |
| `msvc_spectre_libs` | 0.1.3 | MIT OR Apache-2.0 | https://github.com/microsoft/rust_msvc_spectre_libs |
| `muda` | 0.20.0 | Apache-2.0 OR MIT | https://github.com/tauri-apps/muda |
| `multimap` | 0.10.1 | MIT OR Apache-2.0 | https://github.com/havarnov/multimap |
| `ndk` | 0.9.0 | MIT OR Apache-2.0 | https://github.com/rust-mobile/ndk |
| `ndk-context` | 0.1.1 | MIT OR Apache-2.0 | https://github.com/rust-windowing/android-ndk-rs |
| `ndk-sys` | 0.6.0+11769913 | MIT OR Apache-2.0 | https://github.com/rust-mobile/ndk |
| `new_debug_unreachable` | 1.0.6 | MIT | https://github.com/mbrubeck/rust-debug-unreachable |
| `no-std-compat` | 0.4.1 | MIT | https://gitlab.com/jD91mZM2/no-std-compat |
| `nom` | 7.1.3 | MIT | https://github.com/Geal/nom |
| `nom` | 8.0.0 | MIT | https://github.com/rust-bakery/nom |
| `nonempty` | 0.12.0 | MIT | https://github.com/cloudhead/nonempty |
| `nu-ansi-term` | 0.50.3 | MIT | https://github.com/nushell/nu-ansi-term |
| `num` | 0.4.3 | MIT OR Apache-2.0 | https://github.com/rust-num/num |
| `num-bigint` | 0.4.8 | MIT OR Apache-2.0 | https://github.com/rust-num/num-bigint |
| `num-bigint` | 0.5.1 | MIT OR Apache-2.0 | https://github.com/rust-num/num-bigint |
| `num-cmp` | 0.1.0 | MIT/Apache-2.0 | https://github.com/lifthrasiir/num-cmp |
| `num-complex` | 0.4.6 | MIT OR Apache-2.0 | https://github.com/rust-num/num-complex |
| `num-conv` | 0.2.2 | MIT OR Apache-2.0 | https://github.com/jhpratt/num-conv |
| `num-integer` | 0.1.47 | MIT OR Apache-2.0 | https://github.com/rust-num/num-integer |
| `num-iter` | 0.1.46 | MIT OR Apache-2.0 | https://github.com/rust-num/num-iter |
| `num-rational` | 0.4.2 | MIT OR Apache-2.0 | https://github.com/rust-num/num-rational |
| `num-traits` | 0.2.19 | MIT OR Apache-2.0 | https://github.com/rust-num/num-traits |
| `num_enum` | 0.7.6 | BSD-3-Clause OR MIT OR Apache-2.0 | https://github.com/illicitonion/num_enum |
| `num_enum_derive` | 0.7.6 | BSD-3-Clause OR MIT OR Apache-2.0 | https://github.com/illicitonion/num_enum |
| `objc2` | 0.6.5 | MIT | https://github.com/madsmtm/objc2 |
| `objc2-app-kit` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-cloud-kit` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-core-data` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-core-foundation` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-core-graphics` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-core-image` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-core-location` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-core-text` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-encode` | 4.1.0 | MIT | https://github.com/madsmtm/objc2 |
| `objc2-exception-helper` | 0.1.1 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-foundation` | 0.3.2 | MIT | https://github.com/madsmtm/objc2 |
| `objc2-io-surface` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-quartz-core` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-ui-kit` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-user-notifications` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `objc2-web-kit` | 0.3.2 | Zlib OR Apache-2.0 OR MIT | https://github.com/madsmtm/objc2 |
| `object` | 0.39.1 | Apache-2.0 OR MIT | https://github.com/gimli-rs/object |
| `oid-registry` | 0.8.1 | MIT OR Apache-2.0 | https://github.com/rusticata/oid-registry.git |
| `once_cell` | 1.21.4 | MIT OR Apache-2.0 | https://github.com/matklad/once_cell |
| `once_cell_polyfill` | 1.70.2 | MIT OR Apache-2.0 | https://github.com/polyfill-rs/once_cell_polyfill |
| `openssl-probe` | 0.2.2 | MIT OR Apache-2.0 | https://github.com/rustls/openssl-probe |
| `opentelemetry` | 0.33.1 | Apache-2.0 | https://github.com/open-telemetry/opentelemetry-rust/tree/main/opentelemetry |
| `opentelemetry-otlp` | 0.33.1 | Apache-2.0 | https://github.com/open-telemetry/opentelemetry-rust/tree/main/opentelemetry-otlp |
| `opentelemetry-proto` | 0.33.1 | Apache-2.0 | https://github.com/open-telemetry/opentelemetry-rust/tree/main/opentelemetry-proto |
| `opentelemetry_sdk` | 0.33.1 | Apache-2.0 | https://github.com/open-telemetry/opentelemetry-rust/tree/main/opentelemetry-sdk |
| `option-ext` | 0.2.0 | MPL-2.0 | https://github.com/soc/option-ext.git |
| `outref` | 0.5.2 | MIT | https://github.com/Nugine/outref |
| `pango` | 0.18.3 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `pango-sys` | 0.18.0 | MIT | https://github.com/gtk-rs/gtk-rs-core |
| `parking_lot` | 0.12.5 | MIT OR Apache-2.0 | https://github.com/Amanieu/parking_lot |
| `parking_lot_core` | 0.9.12 | MIT OR Apache-2.0 | https://github.com/Amanieu/parking_lot |
| `pem` | 4.0.0 | MIT | https://github.com/jcreekmore/pem-rs.git |
| `percent-encoding` | 2.3.2 | MIT OR Apache-2.0 | https://github.com/servo/rust-url/ |
| `pest` | 2.9.2 | MIT OR Apache-2.0 | https://github.com/pest-parser/pest |
| `pest_derive` | 2.9.2 | MIT OR Apache-2.0 | https://github.com/pest-parser/pest |
| `pest_generator` | 2.9.2 | MIT OR Apache-2.0 | https://github.com/pest-parser/pest |
| `pest_meta` | 2.9.2 | MIT OR Apache-2.0 | https://github.com/pest-parser/pest |
| `petgraph` | 0.7.1 | MIT OR Apache-2.0 | https://github.com/petgraph/petgraph |
| `petgraph` | 0.8.3 | MIT OR Apache-2.0 | https://github.com/petgraph/petgraph |
| `phf` | 0.12.1 | MIT | https://github.com/rust-phf/rust-phf |
| `phf` | 0.13.1 | MIT | https://github.com/rust-phf/rust-phf |
| `phf_codegen` | 0.13.1 | MIT | https://github.com/rust-phf/rust-phf |
| `phf_generator` | 0.13.1 | MIT | https://github.com/rust-phf/rust-phf |
| `phf_macros` | 0.13.1 | MIT | https://github.com/rust-phf/rust-phf |
| `phf_shared` | 0.11.3 | MIT | https://github.com/rust-phf/rust-phf |
| `phf_shared` | 0.12.1 | MIT | https://github.com/rust-phf/rust-phf |
| `phf_shared` | 0.13.1 | MIT | https://github.com/rust-phf/rust-phf |
| `pico-args` | 0.5.0 | MIT | https://github.com/RazrFalcon/pico-args |
| `pin-project` | 1.1.13 | Apache-2.0 OR MIT | https://github.com/taiki-e/pin-project |
| `pin-project-internal` | 1.1.13 | Apache-2.0 OR MIT | https://github.com/taiki-e/pin-project |
| `pin-project-lite` | 0.2.17 | Apache-2.0 OR MIT | https://github.com/taiki-e/pin-project-lite |
| `pkg-config` | 0.3.34 | MIT OR Apache-2.0 | https://github.com/rust-lang/pkg-config-rs |
| `plist` | 1.8.0 | MIT | https://github.com/ebarnard/rust-plist/ |
| `png` | 0.18.1 | MIT OR Apache-2.0 | https://github.com/image-rs/image-png |
| `portable-atomic` | 1.15.0 | Apache-2.0 OR MIT | https://github.com/taiki-e/portable-atomic |
| `portable-atomic-util` | 0.2.8 | Apache-2.0 OR MIT | https://github.com/taiki-e/portable-atomic-util |
| `postcard` | 1.1.3 | MIT OR Apache-2.0 | https://github.com/jamesmunns/postcard |
| `potential_utf` | 0.1.6 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `powerfmt` | 0.2.1 | MIT OR Apache-2.0 | https://github.com/jhpratt/powerfmt |
| `ppv-lite86` | 0.2.21 | MIT OR Apache-2.0 | https://github.com/cryptocorrosion/cryptocorrosion |
| `precomputed-hash` | 0.1.1 | MIT | https://github.com/emilio/precomputed-hash |
| `pretty` | 0.12.5 | MIT | https://github.com/Marwes/pretty.rs |
| `prettyplease` | 0.2.37 | MIT OR Apache-2.0 | https://github.com/dtolnay/prettyplease |
| `proc-macro-crate` | 1.3.1 | MIT OR Apache-2.0 | https://github.com/bkchr/proc-macro-crate |
| `proc-macro-crate` | 2.0.2 | MIT OR Apache-2.0 | https://github.com/bkchr/proc-macro-crate |
| `proc-macro-crate` | 3.5.0 | MIT OR Apache-2.0 | https://github.com/bkchr/proc-macro-crate |
| `proc-macro-error` | 1.0.4 | MIT OR Apache-2.0 | https://gitlab.com/CreepySkeleton/proc-macro-error |
| `proc-macro-error-attr` | 1.0.4 | MIT OR Apache-2.0 | https://gitlab.com/CreepySkeleton/proc-macro-error |
| `proc-macro2` | 1.0.107 | MIT OR Apache-2.0 | https://github.com/dtolnay/proc-macro2 |
| `prost` | 0.14.4 | Apache-2.0 | https://github.com/tokio-rs/prost |
| `prost-build` | 0.14.4 | Apache-2.0 | https://github.com/tokio-rs/prost |
| `prost-derive` | 0.14.4 | Apache-2.0 | https://github.com/tokio-rs/prost |
| `prost-types` | 0.14.4 | Apache-2.0 | https://github.com/tokio-rs/prost |
| `psm` | 0.1.32 | MIT OR Apache-2.0 | https://github.com/rust-lang/stacker/ |
| `pulldown-cmark` | 0.13.5 | MIT | https://github.com/raphlinus/pulldown-cmark |
| `pulldown-cmark-to-cmark` | 22.0.3 | Apache-2.0 | https://github.com/Byron/pulldown-cmark-to-cmark |
| `quick-xml` | 0.38.4 | MIT | https://github.com/tafia/quick-xml |
| `quinn` | 0.11.12 | MIT OR Apache-2.0 | https://github.com/quinn-rs/quinn |
| `quinn-proto` | 0.11.19 | MIT OR Apache-2.0 | https://github.com/quinn-rs/quinn |
| `quinn-udp` | 0.5.16 | MIT OR Apache-2.0 | https://github.com/quinn-rs/quinn |
| `quote` | 1.0.47 | MIT OR Apache-2.0 | https://github.com/dtolnay/quote |
| `r-efi` | 5.3.0 | MIT OR Apache-2.0 OR LGPL-2.1-or-later | https://github.com/r-efi/r-efi |
| `r-efi` | 6.0.0 | MIT OR Apache-2.0 OR LGPL-2.1-or-later | https://github.com/r-efi/r-efi |
| `rand` | 0.10.3 | MIT OR Apache-2.0 | https://github.com/rust-random/rand |
| `rand` | 0.8.8 | MIT OR Apache-2.0 | https://github.com/rust-random/rand |
| `rand` | 0.9.5 | MIT OR Apache-2.0 | https://github.com/rust-random/rand |
| `rand_chacha` | 0.3.1 | MIT OR Apache-2.0 | https://github.com/rust-random/rand |
| `rand_chacha` | 0.9.0 | MIT OR Apache-2.0 | https://github.com/rust-random/rand |
| `rand_core` | 0.10.1 | MIT OR Apache-2.0 | https://github.com/rust-random/rand_core |
| `rand_core` | 0.6.4 | MIT OR Apache-2.0 | https://github.com/rust-random/rand |
| `rand_core` | 0.9.5 | MIT OR Apache-2.0 | https://github.com/rust-random/rand |
| `rand_pcg` | 0.10.2 | MIT OR Apache-2.0 | https://github.com/rust-random/rngs |
| `raw-window-handle` | 0.6.2 | MIT OR Apache-2.0 OR Zlib | https://github.com/rust-windowing/raw-window-handle |
| `rcgen` | 0.14.10 | MIT OR Apache-2.0 | https://github.com/rustls/rcgen |
| `redox_syscall` | 0.5.18 | MIT | https://gitlab.redox-os.org/redox-os/syscall |
| `redox_users` | 0.5.3 | MIT | https://gitlab.redox-os.org/redox-os/users |
| `ref-cast` | 1.0.27 | MIT OR Apache-2.0 | https://github.com/dtolnay/ref-cast |
| `ref-cast-impl` | 1.0.27 | MIT OR Apache-2.0 | https://github.com/dtolnay/ref-cast |
| `referencing` | 0.49.9 | MIT | https://github.com/Stranger6667/jsonschema |
| `referencing` | 0.59.0 | MIT | https://github.com/Stranger6667/jsonschema |
| `regex` | 1.13.1 | MIT OR Apache-2.0 | https://github.com/rust-lang/regex |
| `regex-automata` | 0.4.18 | MIT OR Apache-2.0 | https://github.com/rust-lang/regex |
| `regex-syntax` | 0.8.11 | MIT OR Apache-2.0 | https://github.com/rust-lang/regex |
| `regorus` | 0.12.0 | MIT AND Apache-2.0 AND BSD-3-Clause | https://github.com/microsoft/regorus |
| `reqwest` | 0.12.28 | MIT OR Apache-2.0 | https://github.com/seanmonstar/reqwest |
| `reqwest` | 0.13.5 | MIT OR Apache-2.0 | https://github.com/seanmonstar/reqwest |
| `rfd` | 0.16.1 | MIT | https://github.com/PolyMeilex/rfd |
| `rhai` | 1.27.0 | MIT OR Apache-2.0 | https://github.com/rhaiscript/rhai |
| `rhai_codegen` | 3.3.0 | MIT OR Apache-2.0 | https://github.com/rhaiscript/rhai |
| `ring` | 0.17.14 | Apache-2.0 AND ISC | https://github.com/briansmith/ring |
| `rust_decimal` | 1.43.0 | MIT | https://github.com/paupino/rust-decimal |
| `rustc-hash` | 2.1.3 | Apache-2.0 OR MIT | https://github.com/rust-lang/rustc-hash |
| `rustc-literal-escaper` | 0.0.7 | Apache-2.0 OR MIT | https://github.com/rust-lang/literal-escaper |
| `rustc_version` | 0.4.1 | MIT OR Apache-2.0 | https://github.com/djc/rustc-version-rs |
| `rusticata-macros` | 4.1.0 | MIT/Apache-2.0 | https://github.com/rusticata/rusticata-macros.git |
| `rustix` | 1.1.6 | Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT | https://github.com/bytecodealliance/rustix |
| `rustls` | 0.23.46 | Apache-2.0 OR ISC OR MIT | https://github.com/rustls/rustls |
| `rustls-native-certs` | 0.8.5 | Apache-2.0 OR ISC OR MIT | https://github.com/rustls/rustls-native-certs |
| `rustls-pki-types` | 1.15.1 | MIT OR Apache-2.0 | https://github.com/rustls/pki-types |
| `rustls-webpki` | 0.103.16 | ISC | https://github.com/rustls/webpki |
| `rustversion` | 1.0.23 | MIT OR Apache-2.0 | https://github.com/dtolnay/rustversion |
| `ryu` | 1.0.23 | Apache-2.0 OR BSL-1.0 | https://github.com/dtolnay/ryu |
| `same-file` | 1.0.6 | Unlicense/MIT | https://github.com/BurntSushi/same-file |
| `schannel` | 0.1.30 | MIT | https://github.com/steffengy/schannel-rs |
| `schemars` | 0.8.22 | MIT | https://github.com/GREsau/schemars |
| `schemars` | 0.9.0 | MIT | https://github.com/GREsau/schemars |
| `schemars` | 1.2.3 | MIT | https://github.com/GREsau/schemars |
| `schemars_derive` | 0.8.22 | MIT | https://github.com/GREsau/schemars |
| `scopeguard` | 1.2.0 | MIT OR Apache-2.0 | https://github.com/bluss/scopeguard |
| `security-framework` | 3.7.0 | MIT OR Apache-2.0 | https://github.com/kornelski/rust-security-framework |
| `security-framework-sys` | 2.17.0 | MIT OR Apache-2.0 | https://github.com/kornelski/rust-security-framework |
| `selectors` | 0.38.0 | MPL-2.0 | https://github.com/servo/stylo |
| `semver` | 1.0.28 | MIT OR Apache-2.0 | https://github.com/dtolnay/semver |
| `serde` | 1.0.229 | MIT OR Apache-2.0 | https://github.com/serde-rs/serde |
| `serde-untagged` | 0.1.9 | MIT OR Apache-2.0 | https://github.com/dtolnay/serde-untagged |
| `serde_core` | 1.0.229 | MIT OR Apache-2.0 | https://github.com/serde-rs/serde |
| `serde_derive` | 1.0.229 | MIT OR Apache-2.0 | https://github.com/serde-rs/serde |
| `serde_derive_internals` | 0.29.1 | MIT OR Apache-2.0 | https://github.com/serde-rs/serde |
| `serde_json` | 1.0.154 | MIT OR Apache-2.0 | https://github.com/serde-rs/json |
| `serde_norway` | 0.9.42 | MIT OR Apache-2.0 | https://github.com/cafkafk/serde-yaml |
| `serde_path_to_error` | 0.1.20 | MIT OR Apache-2.0 | https://github.com/dtolnay/path-to-error |
| `serde_repr` | 0.1.21 | MIT OR Apache-2.0 | https://github.com/dtolnay/serde-repr |
| `serde_spanned` | 0.6.9 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `serde_spanned` | 1.1.2 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `serde_urlencoded` | 0.7.1 | MIT/Apache-2.0 | https://github.com/nox/serde_urlencoded |
| `serde_with` | 3.24.0 | MIT OR Apache-2.0 | https://github.com/jonasbb/serde_with/ |
| `serde_with_macros` | 3.24.0 | MIT OR Apache-2.0 | https://github.com/jonasbb/serde_with/ |
| `serialize-to-javascript` | 0.1.2 | MIT OR Apache-2.0 | https://github.com/chippers/serialize-to-javascript |
| `serialize-to-javascript-impl` | 0.1.2 | MIT OR Apache-2.0 | https://github.com/chippers/serialize-to-javascript |
| `servo_arc` | 0.4.3 | MIT OR Apache-2.0 | https://github.com/servo/stylo |
| `sha2` | 0.10.9 | MIT OR Apache-2.0 | https://github.com/RustCrypto/hashes |
| `sha2` | 0.11.1 | MIT OR Apache-2.0 | https://github.com/RustCrypto/hashes |
| `sha3` | 0.10.9 | MIT OR Apache-2.0 | https://github.com/RustCrypto/hashes |
| `sharded-slab` | 0.1.7 | MIT | https://github.com/hawkw/sharded-slab |
| `shlex` | 2.0.1 | MIT OR Apache-2.0 | https://github.com/comex/rust-shlex |
| `signal-hook-registry` | 1.4.8 | MIT OR Apache-2.0 | https://github.com/vorner/signal-hook |
| `simd-adler32` | 0.3.10 | MIT | https://github.com/mcountryman/simd-adler32 |
| `siphasher` | 1.0.4 | MIT OR Apache-2.0 | https://github.com/jedisct1/rust-siphash |
| `slab` | 0.4.12 | MIT | https://github.com/tokio-rs/slab |
| `smallvec` | 1.16.4 | MIT OR Apache-2.0 | https://github.com/servo/rust-smallvec |
| `smartstring` | 1.0.1 | MPL-2.0+ | https://github.com/bodil/smartstring |
| `smol_str` | 0.3.7 | MIT OR Apache-2.0 | https://github.com/rust-lang/rust-analyzer/tree/master/lib/smol_str |
| `socket2` | 0.6.5 | MIT OR Apache-2.0 | https://github.com/rust-lang/socket2 |
| `softbuffer` | 0.4.8 | MIT OR Apache-2.0 | https://github.com/rust-windowing/softbuffer |
| `soup3` | 0.5.0 | MIT | https://gitlab.gnome.org/World/Rust/soup3-rs |
| `soup3-sys` | 0.5.0 | MIT | https://gitlab.gnome.org/World/Rust/soup3-rs |
| `spin` | 0.12.3 | MIT | https://codeberg.org/zesterer/spin |
| `spin` | 0.5.2 | MIT | https://github.com/mvdnes/spin-rs.git |
| `stable_deref_trait` | 1.2.1 | MIT OR Apache-2.0 | https://github.com/storyyeller/stable_deref_trait |
| `stacker` | 0.1.25 | MIT OR Apache-2.0 | https://github.com/rust-lang/stacker |
| `static_assertions` | 1.1.0 | MIT OR Apache-2.0 | https://github.com/nvzqz/static-assertions-rs |
| `static_vcruntime` | 3.0.0 | MIT OR Apache-2.0 OR Zlib | https://github.com/ChrisDenton/static_vcruntime |
| `string_cache` | 0.8.9 | MIT OR Apache-2.0 | https://github.com/servo/string-cache |
| `string_cache` | 0.9.0 | MIT OR Apache-2.0 | https://github.com/servo/string-cache |
| `string_cache_codegen` | 0.6.1 | MIT OR Apache-2.0 | https://github.com/servo/string-cache |
| `strsim` | 0.11.1 | MIT | https://github.com/rapidfuzz/strsim-rs |
| `strum` | 0.28.0 | MIT | https://github.com/Peternator7/strum |
| `strum_macros` | 0.28.0 | MIT | https://github.com/Peternator7/strum |
| `subtle` | 2.6.1 | BSD-3-Clause | https://github.com/dalek-cryptography/subtle |
| `swift-rs` | 1.0.9 | MIT OR Apache-2.0 | https://github.com/Brendonovich/swift-rs |
| `syn` | 1.0.109 | MIT OR Apache-2.0 | https://github.com/dtolnay/syn |
| `syn` | 2.0.119 | MIT OR Apache-2.0 | https://github.com/dtolnay/syn |
| `syn` | 3.0.9 | MIT OR Apache-2.0 | https://github.com/dtolnay/syn |
| `sync_wrapper` | 1.0.2 | Apache-2.0 | https://github.com/Actyx/sync_wrapper |
| `synstructure` | 0.13.2 | MIT | https://github.com/mystor/synstructure |
| `synstructure` | 0.14.0 | MIT | https://github.com/mystor/synstructure |
| `system-deps` | 6.2.2 | MIT OR Apache-2.0 | https://github.com/gdesmott/system-deps |
| `tao` | 0.37.2 | Apache-2.0 | https://github.com/tauri-apps/tao |
| `tao-macros` | 0.1.4 | MIT OR Apache-2.0 | https://github.com/tauri-apps/tao |
| `target-lexicon` | 0.12.16 | Apache-2.0 WITH LLVM-exception | https://github.com/bytecodealliance/target-lexicon |
| `tauri` | 2.12.5 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri |
| `tauri-build` | 2.7.4 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri |
| `tauri-codegen` | 2.7.4 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri |
| `tauri-macros` | 2.7.4 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri |
| `tauri-plugin` | 2.7.2 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri |
| `tauri-plugin-dialog` | 2.8.3 | Apache-2.0 OR MIT | https://github.com/tauri-apps/plugins-workspace |
| `tauri-plugin-fs` | 2.7.1 | Apache-2.0 OR MIT | https://github.com/tauri-apps/plugins-workspace |
| `tauri-runtime` | 2.12.2 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri |
| `tauri-runtime-wry` | 2.12.3 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri |
| `tauri-utils` | 2.10.2 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri |
| `tauri-winres` | 0.3.7 | MIT | https://github.com/tauri-apps/winres |
| `tempfile` | 3.27.0 | MIT OR Apache-2.0 | https://github.com/Stebalien/tempfile |
| `tendril` | 0.5.1 | MIT OR Apache-2.0 | https://github.com/servo/html5ever |
| `term` | 1.2.1 | MIT OR Apache-2.0 | https://github.com/Stebalien/term |
| `thin-vec` | 0.2.21 | MIT OR Apache-2.0 | https://github.com/mozilla/thin-vec |
| `thiserror` | 1.0.69 | MIT OR Apache-2.0 | https://github.com/dtolnay/thiserror |
| `thiserror` | 2.0.21 | MIT OR Apache-2.0 | https://github.com/dtolnay/thiserror |
| `thiserror-impl` | 1.0.69 | MIT OR Apache-2.0 | https://github.com/dtolnay/thiserror |
| `thiserror-impl` | 2.0.21 | MIT OR Apache-2.0 | https://github.com/dtolnay/thiserror |
| `thread_local` | 1.1.10 | MIT OR Apache-2.0 | https://github.com/Amanieu/thread_local-rs |
| `time` | 0.3.55 | MIT OR Apache-2.0 | https://github.com/time-rs/time |
| `time-core` | 0.1.9 | MIT OR Apache-2.0 | https://github.com/time-rs/time |
| `time-macros` | 0.2.32 | MIT OR Apache-2.0 | https://github.com/time-rs/time |
| `tiny-keccak` | 2.0.2 | CC0-1.0 | — |
| `tinystr` | 0.8.5 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `tinyvec` | 1.13.3 | Zlib OR Apache-2.0 OR MIT | https://github.com/Lokathor/tinyvec |
| `tokio` | 1.54.1 | MIT | https://github.com/tokio-rs/tokio |
| `tokio-macros` | 2.7.2 | MIT | https://github.com/tokio-rs/tokio |
| `tokio-rustls` | 0.26.6 | MIT OR Apache-2.0 | https://github.com/rustls/tokio-rustls |
| `tokio-stream` | 0.1.19 | MIT | https://github.com/tokio-rs/tokio |
| `tokio-util` | 0.7.20 | MIT | https://github.com/tokio-rs/tokio |
| `toml` | 0.8.2 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml` | 0.9.12+spec-1.1.0 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml` | 1.1.8+spec-1.1.0 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml_datetime` | 0.6.3 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml_datetime` | 0.7.5+spec-1.1.0 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml_datetime` | 1.1.2+spec-1.1.0 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml_edit` | 0.19.15 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml_edit` | 0.20.2 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml_edit` | 0.25.17+spec-1.1.0 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml_parser` | 1.1.5+spec-1.1.0 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `toml_writer` | 1.1.3+spec-1.1.0 | MIT OR Apache-2.0 | https://github.com/toml-rs/toml |
| `tonic` | 0.14.8 | MIT | https://github.com/grpc/grpc-rust |
| `tonic-build` | 0.14.8 | MIT | https://github.com/grpc/grpc-rust |
| `tonic-prost` | 0.14.8 | MIT | https://github.com/grpc/grpc-rust |
| `tonic-prost-build` | 0.14.8 | MIT | https://github.com/grpc/grpc-rust |
| `tonic-types` | 0.14.8 | MIT | https://github.com/grpc/grpc-rust |
| `tower` | 0.5.3 | MIT | https://github.com/tower-rs/tower |
| `tower-http` | 0.6.11 | MIT | https://github.com/tower-rs/tower-http |
| `tower-http` | 0.7.1 | MIT | https://github.com/tower-rs/tower-http |
| `tower-layer` | 0.3.3 | MIT | https://github.com/tower-rs/tower |
| `tower-service` | 0.3.3 | MIT | https://github.com/tower-rs/tower |
| `tracing` | 0.1.44 | MIT | https://github.com/tokio-rs/tracing |
| `tracing-attributes` | 0.1.31 | MIT | https://github.com/tokio-rs/tracing |
| `tracing-core` | 0.1.36 | MIT | https://github.com/tokio-rs/tracing |
| `tracing-log` | 0.2.0 | MIT | https://github.com/tokio-rs/tracing |
| `tracing-opentelemetry` | 0.34.0 | MIT | https://github.com/tokio-rs/tracing-opentelemetry |
| `tracing-serde` | 0.2.0 | MIT | https://github.com/tokio-rs/tracing |
| `tracing-subscriber` | 0.3.23 | MIT | https://github.com/tokio-rs/tracing |
| `tray-icon` | 0.25.1 | MIT OR Apache-2.0 | https://github.com/tauri-apps/tray-icon |
| `try-lock` | 0.2.5 | MIT | https://github.com/seanmonstar/try-lock |
| `typed-arena` | 2.0.2 | MIT | https://github.com/SimonSapin/rust-typed-arena |
| `typeid` | 1.0.3 | MIT OR Apache-2.0 | https://github.com/dtolnay/typeid |
| `typenum` | 1.20.1 | MIT OR Apache-2.0 | https://github.com/paholg/typenum |
| `ucd-trie` | 0.1.7 | MIT OR Apache-2.0 | https://github.com/BurntSushi/ucd-generate |
| `unicase` | 2.10.0 | MIT OR Apache-2.0 | https://github.com/seanmonstar/unicase |
| `unicode-general-category` | 1.1.0 | Apache-2.0 | https://github.com/yeslogic/unicode-general-category |
| `unicode-ident` | 1.0.27 | (MIT OR Apache-2.0) AND Unicode-3.0 | https://github.com/dtolnay/unicode-ident |
| `unicode-normalization` | 0.1.26 | (MIT OR Apache-2.0) AND Unicode-3.0 | https://github.com/unicode-rs/unicode-normalization |
| `unicode-script` | 0.5.8 | MIT OR Apache-2.0 | https://github.com/unicode-rs/unicode-script |
| `unicode-security` | 0.1.2 | MIT/Apache-2.0 | https://github.com/unicode-rs/unicode-security |
| `unicode-segmentation` | 1.13.3 | MIT OR Apache-2.0 | https://github.com/unicode-rs/unicode-segmentation |
| `unicode-width` | 0.1.14 | MIT OR Apache-2.0 | https://github.com/unicode-rs/unicode-width |
| `unicode-width` | 0.2.3 | MIT OR Apache-2.0 | https://github.com/unicode-rs/unicode-width |
| `unicode-xid` | 0.2.6 | MIT OR Apache-2.0 | https://github.com/unicode-rs/unicode-xid |
| `unsafe-libyaml-norway` | 0.2.15 | MIT | https://github.com/cafkafk/unsafe-libyaml-norway |
| `untrusted` | 0.9.0 | ISC | https://github.com/briansmith/untrusted |
| `url` | 2.5.8 | MIT OR Apache-2.0 | https://github.com/servo/rust-url |
| `urlpattern` | 0.6.0 | MIT | https://github.com/denoland/rust-urlpattern |
| `utf8_iter` | 1.0.4 | Apache-2.0 OR MIT | https://github.com/hsivonen/utf8_iter |
| `utf8parse` | 0.2.2 | Apache-2.0 OR MIT | https://github.com/alacritty/vte |
| `uuid` | 1.26.1 | Apache-2.0 OR MIT | https://github.com/uuid-rs/uuid |
| `uuid-simd` | 0.8.0 | MIT | https://github.com/Nugine/simd |
| `valuable` | 0.1.1 | MIT | https://github.com/tokio-rs/valuable |
| `version-compare` | 0.2.1 | MIT | https://gitlab.com/timvisee/version-compare |
| `version_check` | 0.9.5 | MIT/Apache-2.0 | https://github.com/SergioBenitez/version_check |
| `verus_builtin` | 0.0.0-2026-08-09-0044 | MIT | https://github.com/verus-lang/verus |
| `verus_builtin_macros` | 0.0.0-2026-08-23-0033 | MIT | https://github.com/verus-lang/verus |
| `verus_prettyplease` | 0.0.0-2026-08-09-0044 | MIT OR Apache-2.0 | https://github.com/dtolnay/prettyplease |
| `verus_state_machines_macros` | 0.0.0-2026-08-02-0125 | MIT | https://github.com/verus-lang/verus |
| `verus_syn` | 0.0.0-2026-08-02-0125 | MIT OR Apache-2.0 | https://github.com/dtolnay/syn |
| `vsimd` | 0.8.0 | MIT | https://github.com/Nugine/simd |
| `vstd` | 0.0.0-2026-08-23-0033 | MIT | https://github.com/verus-lang/verus |
| `vswhom` | 0.1.0 | MIT | https://github.com/nabijaczleweli/vswhom.rs |
| `vswhom-sys` | 0.1.3 | MIT | https://github.com/nabijaczleweli/vswhom-sys.rs |
| `walkdir` | 2.5.0 | Unlicense/MIT | https://github.com/BurntSushi/walkdir |
| `want` | 0.3.2 | MIT | https://github.com/seanmonstar/want |
| `wasi` | 0.11.1+wasi-snapshot-preview1 | Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT | https://github.com/bytecodealliance/wasi |
| `wasip2` | 1.0.1+wasi-0.2.4 | Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT | https://github.com/bytecodealliance/wasi-rs |
| `wasm-bindgen` | 0.2.129 | MIT OR Apache-2.0 | https://github.com/wasm-bindgen/wasm-bindgen |
| `wasm-bindgen-futures` | 0.4.79 | MIT OR Apache-2.0 | https://github.com/wasm-bindgen/wasm-bindgen/tree/master/crates/futures |
| `wasm-bindgen-macro` | 0.2.129 | MIT OR Apache-2.0 | https://github.com/wasm-bindgen/wasm-bindgen/tree/master/crates/macro |
| `wasm-bindgen-macro-support` | 0.2.129 | MIT OR Apache-2.0 | https://github.com/wasm-bindgen/wasm-bindgen/tree/main/crates/macro-support |
| `wasm-bindgen-shared` | 0.2.129 | MIT OR Apache-2.0 | https://github.com/wasm-bindgen/wasm-bindgen/tree/master/crates/shared |
| `wasm-streams` | 0.5.0 | MIT OR Apache-2.0 | https://github.com/MattiasBuelens/wasm-streams/ |
| `web-sys` | 0.3.106 | MIT OR Apache-2.0 | https://github.com/wasm-bindgen/wasm-bindgen/tree/master/crates/web-sys |
| `web-time` | 1.1.0 | MIT OR Apache-2.0 | https://github.com/daxpedda/web-time |
| `web_atoms` | 0.2.6 | MIT OR Apache-2.0 | https://github.com/servo/html5ever |
| `webkit2gtk` | 2.0.2 | MIT | https://github.com/tauri-apps/webkit2gtk-rs |
| `webkit2gtk-sys` | 2.0.2 | MIT | https://github.com/tauri-apps/webkit2gtk-rs |
| `webpki-roots` | 1.0.11 | CDLA-Permissive-2.0 | https://github.com/rustls/webpki-roots |
| `webview2-com` | 0.39.1 | MIT | https://github.com/wravery/webview2-rs |
| `webview2-com-macros` | 0.8.1 | MIT | https://github.com/wravery/webview2-rs |
| `webview2-com-sys` | 0.39.1 | MIT | https://github.com/wravery/webview2-rs |
| `winapi` | 0.3.9 | MIT/Apache-2.0 | https://github.com/retep998/winapi-rs |
| `winapi-i686-pc-windows-gnu` | 0.4.0 | MIT/Apache-2.0 | https://github.com/retep998/winapi-rs |
| `winapi-util` | 0.1.11 | Unlicense OR MIT | https://github.com/BurntSushi/winapi-util |
| `winapi-x86_64-pc-windows-gnu` | 0.4.0 | MIT/Apache-2.0 | https://github.com/retep998/winapi-rs |
| `window-vibrancy` | 0.8.1 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri-plugin-vibrancy |
| `windows` | 0.62.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-collections` | 0.3.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-core` | 0.62.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-future` | 0.3.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-implement` | 0.60.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-interface` | 0.59.3 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-link` | 0.2.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-numerics` | 0.3.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-result` | 0.4.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-strings` | 0.5.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-sys` | 0.45.0 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-sys` | 0.52.0 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-sys` | 0.60.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-sys` | 0.61.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-targets` | 0.42.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-targets` | 0.52.6 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-targets` | 0.53.5 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-threading` | 0.2.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows-version` | 0.1.7 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_aarch64_gnullvm` | 0.42.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_aarch64_gnullvm` | 0.52.6 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_aarch64_gnullvm` | 0.53.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_aarch64_msvc` | 0.42.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_aarch64_msvc` | 0.52.6 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_aarch64_msvc` | 0.53.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_i686_gnu` | 0.42.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_i686_gnu` | 0.52.6 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_i686_gnu` | 0.53.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_i686_gnullvm` | 0.52.6 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_i686_gnullvm` | 0.53.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_i686_msvc` | 0.42.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_i686_msvc` | 0.52.6 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_i686_msvc` | 0.53.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_x86_64_gnu` | 0.42.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_x86_64_gnu` | 0.52.6 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_x86_64_gnu` | 0.53.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_x86_64_gnullvm` | 0.42.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_x86_64_gnullvm` | 0.52.6 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_x86_64_gnullvm` | 0.53.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_x86_64_msvc` | 0.42.2 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_x86_64_msvc` | 0.52.6 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `windows_x86_64_msvc` | 0.53.1 | MIT OR Apache-2.0 | https://github.com/microsoft/windows-rs |
| `winnow` | 0.5.40 | MIT | https://github.com/winnow-rs/winnow |
| `winnow` | 0.7.15 | MIT | https://github.com/winnow-rs/winnow |
| `winnow` | 1.0.4 | MIT | https://github.com/winnow-rs/winnow |
| `winreg` | 0.56.0 | MIT | https://github.com/gentoo90/winreg-rs |
| `wit-bindgen` | 0.46.0 | Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT | https://github.com/bytecodealliance/wit-bindgen |
| `writeable` | 0.6.4 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `wry` | 0.57.1 | Apache-2.0 OR MIT | https://github.com/tauri-apps/wry |
| `x11` | 2.21.0 | MIT | https://github.com/AltF02/x11-rs.git |
| `x11-dl` | 2.21.0 | MIT | https://github.com/AltF02/x11-rs.git |
| `x509-parser` | 0.18.1 | MIT OR Apache-2.0 | https://github.com/rusticata/x509-parser.git |
| `yaml_serde` | 0.10.7 | MIT OR Apache-2.0 | https://github.com/yaml/yaml-serde |
| `yasna` | 0.6.0 | MIT OR Apache-2.0 | https://github.com/qnighy/yasna.rs |
| `yoke` | 0.8.4 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `yoke-derive` | 0.8.4 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `zerocopy` | 0.8.63 | BSD-2-Clause OR Apache-2.0 OR MIT | https://github.com/google/zerocopy |
| `zerocopy-derive` | 0.8.63 | BSD-2-Clause OR Apache-2.0 OR MIT | https://github.com/google/zerocopy |
| `zerofrom` | 0.1.8 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `zerofrom-derive` | 0.1.8 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `zeroize` | 1.9.1 | Apache-2.0 OR MIT | https://github.com/RustCrypto/utils |
| `zeroize_derive` | 1.5.0 | Apache-2.0 OR MIT | https://github.com/RustCrypto/utils |
| `zerotrie` | 0.2.5 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `zerovec` | 0.11.9 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `zerovec-derive` | 0.11.7 | Unicode-3.0 | https://github.com/unicode-org/icu4x |
| `zlib-rs` | 0.6.8 | Zlib | https://github.com/trifectatechfoundation/zlib-rs |
| `zmij` | 1.0.23 | MIT | https://github.com/dtolnay/zmij |

## JavaScript packages

14 packages, bundled into the interface.

| Package | Version | Licence | Source |
| ------- | ------- | ------- | ------ |
| `@monaco-editor/loader` | 1.7.0 | MIT | https://github.com/suren-atoyan/monaco-loader |
| `@monaco-editor/react` | 4.7.0 | MIT | https://github.com/suren-atoyan/monaco-react |
| `@tauri-apps/api` | 2.12.4 | Apache-2.0 OR MIT | https://github.com/tauri-apps/tauri |
| `@tauri-apps/plugin-dialog` | 2.8.3 | MIT OR Apache-2.0 | https://github.com/tauri-apps/plugins-workspace |
| `@types/trusted-types` | 2.0.7 | MIT | https://github.com/DefinitelyTyped/DefinitelyTyped |
| `dompurify` | 3.4.15 | (MPL-2.0 OR Apache-2.0) | https://github.com/cure53/DOMPurify |
| `lucide-react` | 0.468.0 | ISC | https://github.com/lucide-icons/lucide |
| `marked` | 14.0.0 | MIT | https://github.com/markedjs/marked |
| `monaco-editor` | 0.57.0 | MIT | https://github.com/microsoft/monaco-editor |
| `react` | 19.3.1 | MIT | https://github.com/react/react |
| `react-dom` | 19.3.1 | MIT | https://github.com/react/react |
| `scheduler` | 0.28.0 | MIT | https://github.com/react/react |
| `state-local` | 1.0.7 | MIT | https://github.com/suren-atoyan/state-local |
| `uplot` | 1.6.32 | MIT | https://github.com/leeoniya/uPlot |

## Packages without a declared licence

Every package above declares a licence.

## Full licence texts

The texts of the licences named above are published by their respective projects at the sources listed.

For licence questions, contact <opensource@permguard.com>.
