(require 'demo-it)
(require 'org-tree-slide)

(setq my-demo/ejemplos-dir (expand-file-name "ejemplos"))


;; funciones para esta presentación

(defun my-demo-step/show-code ()
  "funciones que muestran algo de código y avanza
la presentación al mismo tiempo"
  ;;(demo-it-load-side-window "ejemplos/ejemplo.py")
  (demo-it-presentation-advance))

(defun limpiar ()
  (interactive)
  (ignore-errors
    (kill-buffer "holaMundo.html")))

(defun titulo()
  "Muestra el título de la presentación"
  (demo-it-title-screen "titulo.org" 3))

(defun final()
  "Muestra el título de la presentación"
  (demo-it-title-screen "fin.org" 3))



;; Funciones para esta presentación

(demo-it-create :advance-mode
                :insert-fast :show-block-headers
                (demo-it-load-file "../../html/jquery/metodoHtmlEstablecer.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Estableciendo contenido</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\"button\").click(function(){
        $(\"body\").html(\"<p>Estoy harto de saludar!</p>\");
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\">Escribe un saludo</button>
</body>
</html>")

)
(demo-it-start)

