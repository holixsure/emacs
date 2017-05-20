
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)

(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)
(setq-default cursor-type 'bar)
(setq inhibit-splash-screen t)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)

(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'org)
(setq org-src-fontify-natively t)

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-item 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(delete-selection-mode t)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(global-hl-line-mode t)



(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)


(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; org
(setq org-agenda-files '("~/Work/documents/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(global-auto-revert-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   (quote
    ("f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))
