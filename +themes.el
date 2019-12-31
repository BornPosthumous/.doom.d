;;; ~/.doom.d/+themes.el -*- lexical-binding: t; -*-


;; T H E M E S

(setq doom-theme 'doom-dracula)

;; Fonts
(add-to-list 'default-frame-alist '(font . "Source Code Pro Bold" ))
(set-face-attribute 'default t :font  "Source Code Pro Bold"  )

;; Transparency

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
