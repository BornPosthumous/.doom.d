;;; ~/.doom.d/+projectile.el -*- lexical-binding: t; -*-

;; Projectile will not find projects correctly without this
(setq projectile-git-submodule-command nil)
;; Ignores
(setq projectile-globally-ignored-directories '("node_modules" ".happypack" "flow-typed" "build" "lib" "dist"))
(setq grep-find-ignored-directories '("node_modules" ".happypack"))
