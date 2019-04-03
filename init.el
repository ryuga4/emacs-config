(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . " http://melpa.org/packages/"))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (sublimity ido-vertical-mode ido-yes-or-no ido-completing-read+ smex helm)))
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




(package-initialize)








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; evil
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ido

;;(require 'ido-yes-or-no)
;;(ido-yes-or-no-mode 1)
(require 'smex) 
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'ido-vertical-mode)
(ido-mode 1)
(ido-everywhere 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; awesome-tab
;;(add-to-list 'load-path "~/.emacs.d/awesome-tab")

;;(require 'awesome-tab)

;;(awesome-tab-mode t)

;;(awesome-tab-build-helm-source)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; sublimity

(require 'sublimity)
(require 'sublimity-scroll)
;(require 'sublimity-map) ;; experimental
;(require 'sublimity-attractive)
;(setq sublimity-map-size 20)
;(setq sublimity-map-fraction 0.3)
;(setq sublimity-map-text-scale -7)
;(add-hook 'sublimity-map-setup-hookb
;          (lambda ()
;            (setq buffer-face-mode-face '(:family "Monospace"))
;            (buffer-face-mode)))
;(sublimity-map-set-delay nil)
(sublimity-mode 1)



(setq sublimity-scroll-weight 10
      sublimity-scroll-drift-length 5)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; zoom


(custom-set-variables
 '(zoom-mode t))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; eyebrowse

(eyebrowse-mode t)

(global-highlight-parentheses-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
;(global-yascroll-bar-mode 1)
(dimmer-mode)
;(beacon-mode 1)
(global-undo-tree-mode)
(global-anzu-mode +1)
(anzu-mode +1)
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(menu-bar-mode -1)
(toggle-scroll-bar -1) 
(tool-bar-mode -1)
(global-linum-mode 1)







