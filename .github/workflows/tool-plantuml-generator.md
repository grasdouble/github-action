<uml>밥->앨리스 : hello</uml>
<br>
<uml>
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another authentication Request
Alice &lt;-- Bob: another authentication Response
</uml>

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//cdn.rawgit.com/jmnote/plantuml-encoder/d133f316/dist/plantuml-encoder.min.js"></script>
<script>
$("uml").each(function() {
  var src = "//www.plantuml.com/plantuml/img/" + window.plantumlEncoder.encode( $(this).text() )
  $(this).replaceWith($('<img>').attr('src', src));
});
</script>