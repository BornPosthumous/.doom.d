;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-


;; ------------- Load Personal Modules --------------
(load! "+bindings")
(load! "+javascript")
;; (load! "+ui")

;; Projectile will not find projects correctly without this
(setq projectile-git-submodule-command nil)
;; Ignores
(setq projectile-globally-ignored-directories '("node_modules" ".happypack" "flow-typed" "build" "lib" "dist"))
(setq grep-find-ignored-directories '("node_modules" ".happypack"))

;; T H E M E S
(setq doom-theme 'doom-dracula)
;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;(set-frame-parameter (selected-frame) 'alpha <both>)
(set-frame-parameter (selected-frame) 'alpha '(95 . 80))
(add-to-list 'default-frame-alist '(alpha . (95 . 80)))
(setq flycheck-display-error-messages-unless-error-list t)

(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(95 . 90) '(100 . 100)))))
;; Set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

(add-to-list 'default-frame-alist '(font . "Source Code Pro Bold" ))
(set-face-attribute 'default t :font  "Source Code Pro Bold"  )


;; Tabs
(setq-default tab-width 2
              tab-width 2
              c-basic-offset 2
              javascript-2-level 2
              js-2-level 2
              js2-basic-offset 2
              web-mode-markup-2-offset 2
              web-mode-css-2-offset 2
              web-mode-code-2-offset 2
              css-2-offset 2
              )
(require 'cc-mode)

(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (require 'use-package)))

;; Path to rust source.
(when (equal system-type 'gnu/linux)
  (setq racer-rust-src-path (concat (getenv "HOME") "/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src")))
(when (equal system-type 'darwin)
  (setq racer-rust-src-path (concat (getenv "HOME") "/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src")))
;; Racer bin path.
(setq racer-cmd (concat (getenv "HOME") "/.cargo/bin/racer"))
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
;; (use-package projectile :ensure t)
;; (use-package yasnippet :ensure t)
;; (use-package lsp-mode :ensure t)
;; (use-package hydra :ensure t)
;; (use-package company-lsp :ensure t)
;; (use-package lsp-ui :ensure t)
;; (use-package lsp-java :ensure t :after lsp
;;   :config (add-hook 'java-mode-hook 'lsp))

;; (use-package dap-mode
;;   :ensure t :after lsp-mode
;;   :config
;;   (dap-mode t)
;;   (dap-ui-mode t))

;; (use-package dap-java :after (lsp-java))
;---------------- Flycheck -------------------
;; http://www.flycheck.org/manual/latest/index.html
;; (require 'flycheck)

;; turn on flychecking globally
;; (add-hook 'after-init-hook #'global-flycheck-mode)
;; (add-to-list 'flycheck-checkers 'javascript-eslint)
;; -------------- Company Stuff ----------------
;; (after! company
;;   (setq company-idle-delay 0.2
;;         company-echo-delay 0.0
;;         company-minimum-prefix-length 2
;;         company-tooltip-flip-when-above t
;;         company-dabbrev-downcase nil))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
;;(when (memq window-system '(mac ns))
;;    (setq exec-path-from-shell-variables '("PATH" "MANPATH" "SSH_CLIENT" "HOSTNAME"
 ;;                                           "GTAGSCONF" "GTAGSLABEL" "RUST_SRC_PATH"
 ;;                                           "HISTFILE" "HOME" "GOPATH" "GOROOT" "GOEXEC"))
;;    (exec-path-from-shell-initialize))
;; Place your private configuration here
