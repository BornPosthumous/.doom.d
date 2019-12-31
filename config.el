;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-


;; ------------- Load Personal Modules --------------
(load! "+bindings")
(load! "+javascript")
(load! "+themes")
(load! "+rust")
(load! "+projectile")

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

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
   (setq exec-path-from-shell-variables '("PATH" "MANPATH" "SSH_CLIENT" "HOSTNAME"
                                           "GTAGSCONF" "GTAGSLABEL" "RUST_SRC_PATH"
                                           "HISTFILE" "HOME" "GOPATH" "GOROOT" "GOEXEC"))
   (exec-path-from-shell-initialize))


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

