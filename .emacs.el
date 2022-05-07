;; Manually refresh M-x package-refresh-contents before packages can be installed

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

(require 'package)
(package-initialize)

;; Packages
(setq my-packages
      '(magit
	smartparens
	use-package
        eink-theme
        org-roam
	org-roam-ui
	rubocop
	rjsx-mode
        prettier-js
        recentf
	format-all
	))

;; Iterate on packages and install missing ones
(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; Note Taking / Org Roam
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/Documents/org-roam"))
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
  (require 'org-roam-protocol))
(setq org-roam-dailies-directory "~/Documents/org-roam/daily")
(add-to-list 'load-path "~/.emacs.d/private/org-roam-ui")
(load-library "org-roam-ui")
(setq ispell-program-name "/usr/local/bin/ispell")
(add-hook 'text-mode-hook 'flyspell-mode)

;; Visual Settings
(show-paren-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-visual-line-mode t)
(setq org-src-fontify-natively 1)
(load-theme 'eink t)
(set-face-foreground 'font-lock-comment-face "#A9A9A9")
;;(set-face-font 'default "-*-Hack-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-face-attribute 'default (selected-frame) :height 300)
(setq org-hide-emphasis-markers t)

;; Editor Settings
(require 'smartparens-config)
(smartparens-global-mode 1)
(require 'recentf)
(recentf-mode 1)
(global-set-key (kbd "C-c r") 'recentf-open-files)
(setq history-length 17)
(savehist-mode 1)
(save-place-mode 1)
(desktop-save-mode 1)

;; Linting
(setq-default show-trailing-whitespace t)
(require 'prettier-js)
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
(require 'rubocop)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(prettier-js rubocop org-roam-ui org-roam eink-theme use-package smartparens magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
