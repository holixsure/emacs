;; 视觉层配置
;; --------------------------------------------------

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标样式
(setq-default cursor-type 'bar)

;; 关闭启动帮助界面
(setq inhibit-splash-screen 1)

;; 全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 当前行高亮
(global-hl-line-mode 1)

;; 设置字体大小 13pt
;; (set-face-attribute 'default nil :height 130)

;; 加载主题
;; (load-theme 'solarized-light t)
;; (load-theme 'material t)

;; 判断当前系统，如果为windows设置字体，默认字体会卡住
(when (memq window-system '(w32))
  (set-default-font "-outline-微软雅黑-normal-normal-normal-sans-12-*-*-*-p-*-utf-8"))


(provide 'init-ui)
