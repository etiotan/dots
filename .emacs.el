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
 '(org-agenda-files '("~/org-roam/20220116132439-binary_search.org"))
 '(org-hide-emphasis-markers t)
 '(package-selected-packages
   '(rjsx-mode smartparens org-roam-ui use-package org-roam google-this magit eink-theme)))


(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-visual-line-mode t)

(load-theme 'eink t)
(set-face-foreground 'font-lock-comment-face "#A9A9A9")


;; fontify code in code blocks
(setq org-src-fontify-natively 1)
      
(menu-bar-mode -1)
(tool-bar-mode -1)

(show-paren-mode 1)

;; spellchecker
(setq ispell-program-name "/usr/local/bin/ispell")
(add-hook 'text-mode-hook 'flyspell-mode)

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/org-roam"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-ui-mode)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n t" . org-roam-dailies-capture-tomorrow)
	 ("C-c n [" . org-roam-dailies-goto-previous-note)
	 ("C-c n ]" . org-roam-dailies-goto-next-note)
         ("C-c n d" . org-roam-dailies-goto-date))
  :config
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))
  ;; Journaling setup
  (setq org-roam-dailies-directory "~/org-roam/daily")

(require 'smartparens-config)

(smartparens-global-mode 1)

(add-to-list 'load-path "~/.emacs.d/private/org-roam-ui")
(load-library "org-roam-ui")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Hack"))))
 '(org-block ((t (:background "#EFF0F1" :extend t))))
 '(org-block-begin-line ((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF" :extend t))))
 '(org-block-end-line ((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF" :extend t)))))
