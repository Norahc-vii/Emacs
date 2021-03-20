(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-line-numbers-type 'relative)
 '(global-display-line-numbers-mode t)
 '(line-number-mode nil)
 '(package-selected-packages
   '(guix gnugo color-theme haskell-mode quack geiser sly slime slime-volleyball))
 '(quack-programs
   '("mzscheme" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi"))
 '(scroll-bar-mode 'left)
 '(tab-bar-mode t)
 '(tool-bar-position 'right))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Setup load-path, autoloads and your lisp system
;; Not needed if you install SLIME via MELPA
(add-to-list 'load-path "/home/Norah.C/slime")
(require 'slime-autoloads)
(setq inferior-lisp-program "/bin/sbcl")

;; The binary of your interpreter
(setq scheme-program-name "racket")

;; This hook lets you use your theme colours instead of quack's ones.
(defun scheme-mode-quack-hook ()
  (require 'quack)
  (setq quack-fontify-style 'emacs))
(add-hook 'scheme-mode-hook 'scheme-mode-quack-hook)

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

