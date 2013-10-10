(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(setq make-backup-files nil)
(setq default-directory "/home/xiaohong")
(setq backup-directory-alist (quote (("." . "~/.backups"))))


(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))


(setq vc-handled-backends ())

;;(global-auto-revert-mode t)

(put 'upcase-region 'disabled nil)

 ;;go-mode
(add-to-list 'load-path (concat user-emacs-directory "golang/") t)
(require 'go-mode-load)

(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq live-root-dir (concat user-emacs-directory "emacs-live/"))
(load (concat user-emacs-directory "emacs-live/init.el"))

;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)
;;(menu-bar-mode t)
;;(tool-bar-mode nil)
(scroll-bar-mode t)
