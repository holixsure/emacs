;; My Emacs Configure
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------------------
(require 'init-packages)
(require 'init-ui)
(require 'init-py)
(require 'unicad)


;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 绑定到<F2>键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

;; 开启全局Company补全
(global-company-mode 1)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(delete-selection-mode 1)

;; 设置默认读入文件编码
(prefer-coding-system 'utf-8)

;; 设置写入文件编码
(setq default-buffer-file-coding-system 'utf-8)

;; ivy-mode
(ivy-mode 1)
(global-set-key "\C-s" 'swiper)
