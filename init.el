(require 'package)

;;add melpa and other useful package archives
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(package-initialize)

;;Python mode
(autoload 'python-mode "python-mode" "Python Mode." t)
 (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
 (add-to-list 'interpreter-mode-alist '("python" . python-mode))

;;Set aspect
(load-theme 'material t)
(global-linum-mode t)

;;Bind revert key
(global-set-key [f5] 'revert-buffer)

;;When working from behind a proxy
(setq url-proxy-services
       '(("http" . "myProxy:port")
         ("https" . "myProxy:port")))

;;some further aspect config
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(cua-mode t nil (cua-base))
 ;'(custom-enabled-themes (quote (tsdh-dark)))
 '(safe-local-variable-values (quote ((eval show-all))))
 '(save-place t nil (saveplace))
 '(show-paren-mode t)
 '(inhibit-startup-screen t)
 '(python-shell-interpreter "python3"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(put 'upcase-region 'disabled nil)

;; delete trailing whitespace
(load-library "ws-butler")
(require 'ws-butler)
(ws-butler-global-mode 1)

;;no tabs
(setq-default indent-tabs-mode nil)

;;alias
(defalias 'yes-or-no-p 'y-or-n-p)

;; scroll one line at a time (less "jumpy" than defaults)
;(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling

;;Activate elpy
(elpy-enable)

;; For elpy
(setq elpy-rpc-python-command "python3")
;; For interactive shell
(setq python-shell-interpreter "python3")
