;;; ~/.doom.d/+rust.el -*- lexical-binding: t; -*-

;; Path to rust source.
(when (equal system-type 'gnu/linux)
  (setq racer-rust-src-path (concat (getenv "HOME") "/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src")))
(when (equal system-type 'darwin)
  (setq racer-rust-src-path (concat (getenv "HOME") "/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src")))
;; Racer bin path.
(setq racer-cmd (concat (getenv "HOME") "/.cargo/bin/racer"))
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
