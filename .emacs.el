;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(evil org-journal )))


;; Enable Evil
(require 'evil)
(evil-mode 1)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; no syntax highlighting
(global-font-lock-mode 0)

(org-journal-new-entry nil)

(evil-set-initial-state 'calendar-mode 'emacs)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Hack")))))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 
