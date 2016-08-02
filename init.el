;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; C++ style
(defun my-c++-mode-hook ()
  (setq c-basic-offset 4)
  (c-set-offset 'substatement-open 0))

(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; CUDA style
(add-hook 'cuda-mode-hook 'my-c++-mode-hook)

;; Move-text
(global-set-key [M-up] 'move-text-up)
(global-set-key [M-down] 'move-text-down)

;; Compile command
(global-set-key (kbd "C-c c") 'compile)
 

;; Extensions -> Modes
(add-to-list 'auto-mode-alist '("\\.c\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.C\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cc\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cxx\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))



