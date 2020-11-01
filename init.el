
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(require 'package)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")))  

(package-initialize)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(defun my-inhibit-startup-screen-file ()
  "Startup screen inhibitor for `command-line-functions`.
Inhibits startup screen on the first unrecognised option which
names an existing file."
  (ignore
   (setq inhibit-startup-screen
         (file-exists-p
          (expand-file-name argi command-line-default-directory)))))

(add-hook 'command-line-functions #'my-inhibit-startup-screen-file)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("f2c35f8562f6a1e5b3f4c543d5ff8f24100fae1da29aeb1864bbc17758f52b70" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" default)))
 '(package-selected-packages
   (quote
    (zenburn-theme slime live-py-mode j-mode helm-themes evil cyberpunk-theme cider autothemer))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Math TeX Gyre" :foundry "Deja" :slant normal :weight normal :height 120 :width normal)))))
