;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")) (package-initialize)
(package-refresh-contents)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(custom-enabled-themes '(eink))
 '(custom-safe-themes
   '("021321ae56a45794f43b41de09fb2bfca184e196666b7d7ff59ea97ec2114559" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages '(google-this magit eink-theme org-journal)))


(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(org-journal-new-entry nil)

(load-theme 'eink t)
(set-face-foreground 'font-lock-comment-face "#A9A9A9")

(google-this-mode 1)
;; fontify code in code blocks
(setq org-src-fontify-natively 1)
      
(menu-bar-mode -1)
(tool-bar-mode -1)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Hack"))))
 '(org-block ((t (:background "#EFF0F1" :extend t))))
 '(org-block-begin-line ((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF" :extend t))))
 '(org-block-end-line ((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF" :extend t)))))
