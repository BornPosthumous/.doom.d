;;; ~/.doom.d/+javascript.el -*- lexical-binding: t; -*-

;; --------- Set namespace ----------
(require 'prettier-js)

(use-package exec-path-from-shell
  :custom
  (exec-path-from-shell-check-startup-files nil)
  :config
  (push "HISTFILE" exec-path-from-shell-variables)
  (exec-path-from-shell-initialize))

(after! tide
  (setq tide-completion-detailed t
        tide-always-show-documentation t)
  )

(setq prettier-js-args '(
  "--trailing-comma" "none"
  "--parser" "flow"
  "--semi" "false"
  "single-quote" "true"
  ))

(eval-after-load 'js2-mode
  '(add-hook 'js-mode-hook #'add-node-modules-path))

(add-hook 'js2-mode-hook
          (defun my-js2-mode-setup ()
            (flycheck-mode t)
            (when (executable-find "eslint")
              (flycheck-select-checker 'javascript-eslint))))


(add-hook! (rjsx-mode js2-mode)
     #'(prettier-js-mode))
