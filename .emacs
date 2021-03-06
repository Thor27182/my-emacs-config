; remove Toolbar
(tool-bar-mode -1)

; start package.el with emacs
(require 'package)

;; add melpa
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

; initialize package.el
(package-initialize)

; start emacs with auto-complete
(require 'auto-complete)

;;default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)

; start emacs with yasnippet
(require 'yasnippet)
;; is always on
(yas-global-mode 1)


;;key-bindings
(global-set-key (kbd "M-+") 'ace-window) ;cycel throug buffer and windows

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (multiple-cursors auctex yasnippet-snippets yasnippet auto-complete org ##))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; start with cheatsheets
(find-file "~/my-emacs-config/cheatsheets/emacscommands.org")
(find-file "~/my-emacs-config/cheatsheets/orgmodecommands.org")

; ORG-Settings
;; Key-bindings
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; add timestamp, when a todo is changed to done
(setq org-log-done t)

;Multiple cursors
(when (fboundp 'mc/edit-lines)
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))
