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
	lsp-mode
	company
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
;; (setq ispell-program-name "/usr/local/bin/ispell")
;; (add-hook 'text-mode-hook 'flyspell-mode)

;; Visual Settings
(show-paren-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(global-visual-line-mode t)
(setq org-src-fontify-natively 1)

(set-face-foreground 'font-lock-comment-face "#A9A9A9")
;;(set-face-font 'default "-*-Hack-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-face-attribute 'default (selected-frame) :height 230)
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
(add-to-list 'auto-mode-alist '("\\.js\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . lsp-deferred))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . lsp-deferred))

;; (global-set-key (kbd "C-c C-o") 'lsp-goto-type-definition)

;; (require 'rubocop)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face 'default)
 '(custom-safe-themes
   '("78e6be576f4a526d212d5f9a8798e5706990216e9be10174e3f3b015b8662e27" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "021321ae56a45794f43b41de09fb2bfca184e196666b7d7ff59ea97ec2114559" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" default))
 '(fci-rule-color "#3C3D37")
 '(highlight-changes-colors '("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   '(("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100)))
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   '(treemacs-icons-dired monokai-theme gruvbox-theme prettier-js rubocop org-roam-ui org-roam eink-theme use-package smartparens magit))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
