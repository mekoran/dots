(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)
(setq-default tab-width 4)

(setq doom-theme 'doom-oceanic-next)



(setq org-directory "~/Documents/")

(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "|" "DONE")))

;;(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ("laptop" . ?l)))

(setq org-default-notes-file (concat org-directory "~/Documents/notes.org"))

(after! org
  (setq org-capture-templates
        (setq org-capture-templates
                '(("t" "Todo" entry (file+headline "~/Documents/todo.org" "Tasks")
                   "* TODO %?\n  %u %a"
                   :empty-lines 0
                   :kill-buffer t)
                  ("j" "Journal" entry (file+datetree "~/Documents/journal.org")
                   "* %?\nEntered on %U\n  >%i\n  %a"
                   :empty-lines 0
                   :kill-buffer t)
                  ("s" "Shortcut" table-line (file+headline "~/Documents/ref-tables.org" "keybinds")
                   "|%?| | %^{system|Emacs|niri} |")
    )))
)
;(setq org-capture-templates-contexts
;      '(("c" ((in-mode . "message-mode")))
;        ("d" (my-context-function (in-mode . "org-mode")))
;       ))

(setq evil-normal-state-cursor '(box "#6699CC"))
(setq evil-insert-state-cursor '(bar "yellow"))
(setq evil-visual-state-cursor 'box)
(setq evil-replace-state-cursor '(hollow "yellow"))

(global-set-key (kbd "M-t") #'treemacs)
