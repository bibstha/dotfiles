;; Enable package management
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

;; Enable relative line numbers
(require 'linum-relative)
(linum-mode)
;; If performance concern, switch backend https://github.com/coldnew/linum-relative#backends

;; Enable evil for all buffers
(require 'evil)
(evil-mode 1)

;; (evil-set-initial-state 'Info-mode 'normal)
(define-key Info-mode-map "g" nil)

;; Vim Style easy motions
(define-key evil-motion-state-map " " nil)
(define-key evil-motion-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-motion-state-map (kbd "C-l") 'evil-window-right)
(define-key evil-motion-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-motion-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-motion-state-map "gg" 'evil-goto-first-line)
(define-key evil-motion-state-map (kbd "<SPC>pf") 'helm-projectile)

;;(projectile-global-mode)
;; (setq projectile-completion-system 'helm)
;; (helm-projectile-on)

;;
;;(use-package helm
;;  :bind (("M-x" . helm-M-x)
;;         ("M-<f5>" . helm-find-files)
;;         ([f10] . helm-buffers-list)
;;         ([S-f10] . helm-recentf)))
;;
;;;; (projectile-mode +1)
;;;;(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;;
;;(use-package projectile
;;  :bind-keymap
;;  ("C-c p" . projectile-command-map))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm-ag helm-projectile linum-relative ag projectile helm markdown-mode use-package evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
