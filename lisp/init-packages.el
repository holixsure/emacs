(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))

(require 'cl)

(defvar my/packages '(
		      company
		      monokai-theme
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      js2-mode
		      nodejs-repl
		      exec-path-from-shell
		      popwin
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'hungry-delete)
(global-hungry-delete-mode)

;; smartparens
(require 'smartparens-config)
;; (add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode)

;; ivy-mode
(ivy-mode t)
(setq ivy-use-virtual-buffers t)

;; js2-mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(global-company-mode t)

(load-theme 'monokai t)

;; popwin
(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
