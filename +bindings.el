;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

;;; private/tt/+bindings.el -*- lexical-binding: t; -*-

(unmap! "C-s")
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "s-b") 'treemacs )

;; (evil-define-key 'insert global-map (kbd "M-f") 'evil-normal-state)
;; (evil-define-key 'normal tide-mode-map "R" 'tide-references)
;; (evil-define-key 'normal tide-mode-map "Q" 'rjsx-rename-tag-at-point)
;; (eval-after-load "flow-minor-mode"
;;      '(define-key flow-minor-mode-map (kbd "C-S-f") 'flow-minor-status))
;; (map! (:leader
;;        :desc "Jump to definition" :n "g" #'dumb-jump-go))
;; (global-set-key (kbd "C-S-g") 'web-mode-element-wrap)
