;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")) (package-initialize)
(package-refresh-contents)

;; Editor Settings
(require 'smartparens-config)
(smartparens-global-mode 1)
(require 'recentf)
(recentf-mode 1)
(global-set-key (kbd "C-c g") 'google-this)
(global-set-key (kbd "C-c r") 'recentf-open-files)
(setq history-length 17)
(savehist-mode 1)
(save-place-mode 1)
(desktop-save-mode 1)

;; Linting
(require 'prettier-js)
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

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
;; '(org-block-begin-line ((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF" :extend t))))
;;  '(org-block-end-line ((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF" :extend t)))))

;; Visual Settings
(show-paren-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/Documents/org-roam/daily/2022-03-04.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-visual-line-mode t)
(setq org-src-fontify-natively 1)
(load-theme 'eink t)
(set-face-foreground 'font-lock-comment-face "#A9A9A9")
(set-face-font 'default "-*-Hack-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-face-attribute 'default (selected-frame) :height 200)
(setq org-hide-emphasis-markers t)
