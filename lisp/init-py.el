;; Python配置

(require 'elpy)

(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")
(setq pyvenv-virtualenvwrapper-python "/usr/local/bin/python3")

(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(provide 'init-py)
