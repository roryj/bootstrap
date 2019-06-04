;;(setq ns-use-srgb-colorspace nil)

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     markdown
     clojure
     org
     osx
     pandoc
     spell-checking
     sql
     syntax-checking
     )))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  )

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  ; Set the path
  (setq exec-path (split-string (getenv "PATH") path-separator))

  ;; Remove annoying save files. Put them somewhere nice and safe for when you do screw up :)
  (setq backup-directory-alist `(("." . ,(expand-file-name "~/.emacs-backups"))))
  )
(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ;; Clojure
  (setq clojure-enable-fancify-symbols t)

  ;; set pretty symbols for anonymous functions
  (setq-default dotspacemacs-configuration-layers
    '((spell-checking :variables spell-checking-enable-auto-dictionary t)))

  ;; TODO items with unfinished child TODOs cannot be marked as done
  (setq org-enforce-todo-dependencies t)

  ;; dim blocked TODOs from above to be slightly dimmed
  (setq org-agenda-dim-blocked-tasks t)


  ;; org mode todo keywords
  (setq org-todo-keywords
        '(
          (sequence "TODO" "IN PROGRESS" "BLOCKED" "|" "DONE" "CANCELED")
          (sequence "RESEARCHING" "|" "COMPLETE")
          (sequence "IDEA" "PROGRESS" "|" "FINISHED")
          ))
  ;; add the time to the entry when it is marked as done
  (setq org-log-done 'time)

  ;; Set the colouring and look of the todo keywords
  (setq org-todo-keyword-faces
        '(
          ("TODO"
           :weight bold
           :foreground "#FC5B3F")
          ("IN PROGRESS" . "orange")
          ("BLOCKED"
           :weight bold
           :background "red"
           :foreground "white")
          ("CANCELED" . "red")
          ("IDEA" . org-warning)
          ("DONE"
           :weight bold
           :foreground "green")
          ("RESEARCHING"
           :weight bold
           :foreground "#FCB03C")
          ))
  ;; org-journal settings
  (setq org-journal-file-format "%Y-%m-%d.org")
  (defvar org-journal-date-format "%A %d-%m-%Y"
    "Date format string for journal headings.")
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs-backups/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs-backups/"))))
 '(package-selected-packages
   (quote
    (reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-done ((t (:foreground "chartreuse4"))))
 '(org-done ((t (:foreground "chartreuse3"))))
 ;'(org-level-3 ((t (:inherit outline-5))))
 '(org-todo ((t (:foreground "firebrick3"))))
 )
