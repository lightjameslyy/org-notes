(+ 3 (+ 1 2))
6

(+ 2 2)
4
(+ 2 (+ 1 1))
4

(setq my-name "lightjames")

(insert "hello!")

(insert "hello" " world!")

(insert "hello, i am " my-name)

(defun hello() (insert "hello, I am " my-name))

(hello)

(defun hello (name) (insert "hello, " name))

(hello "you")

(switch-to-buffer-other-window "*test*")

(progn
  (switch-to-buffer-other-window "*test*")
  (hello "you")
  )

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello "there")
  )

(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello "there")
  (other-window 1)
  )

(let ((local-name "you"))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello local-name)
  (other-window 1)
  )

(format "hello %s!\n" "visitor")

(defun hello (name)
  (insert (format "hello %s!\n" "name"))
  )

(hello "you")

(defun greeting (name)
  (let ((your-name "light"))
    (insert (format "hello %s!\n\nI am %s." name your-name))
    )
  )

(greeting "you")

(read-from-minibuffer "Enter your name: ")

(defun greeting (from-name)
  (let ((your-name (read-from-minibuffer "Enter your name: ")))
    (insert (format "hello!\n\nI am %s and you are %s." from-name your-name))
    )
  )

(greeting "andy")

(defun greeting (from-name)
  (let ((your-name (read-from-minibuffer "Enter your name: ")))
    (switch-to-buffer-other-window "*test*")
    (erase-buffer)
    (insert (format "Hello %s!\n\nI am %s." your-name from-name))
    (other-window 1)
    )
  )

(greeting "andy")

(setq list-of-names '("Sarah" "Chloe" "Mathilde"))

(car list-of-names)

(cdr list-of-names)

(push "Steohanie" list-of-names)

(mapcar 'hello list-of-names)

(defun greeting()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-names)
  (other-window 1)
  )

(greeting)

(defun replace-hello-by-bonjour()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (search-forward "hello")
    (replace-match "bonjour")
    )
  (other-window 1)
  )

(replace-hello-by-bonjour)

(defun hello-to-bonjour()
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (mapcar 'hello list-of-names)
  (goto-char (point-min))
  (while (search-forward "Hello" nil 't)
    (replace-match "bonjour")
    )
  (other-window 1)
  )

(hello-to-bonjour)

(defun boldify-names ()
  (switch-to-buffer-other-window "*test*")
  (goto-char (point-min))
  (while (re-search-forward "bonjour \\(.+\\)!" hil 't)
    (add-text-propersities (match-beginning 1)
                           (match-end 1)
                           (list 'face 'bold))
    )
  (other-window 1)
  )

(boldify-names)



(tool-bar-mode -1)
(scroll-bar-mode -1)
(linum-mode t)

