#!/bin/bash

usage(){
    printf "./$(basename $0) [ OPTIONS ]"
    printf "\n\nOPTIONS:"
    printf "\n   -n <STRING> Name of file to create while bootstrapping\n"
}

while getopts "n:h" arg; do
  case $arg in
    n)
      file_name=$OPTARG
      ;;
    *)
      usage
      ;;
  esac
done

if [[ -n ${file_name} ]]; then
    cat << EOF >> ${file_name}
<html>


    <head>
      <!-- ================================================== -->
      <meta charset="UTF-8">
      <title>Bootstrap Skeleton</title>
      <!-- ================================================== -->
      <!-- Bootstrap CSS: -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      <!-- ================================================== -->
      <!-- Optional Font Awesome library: -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
      <!--
        Font Awesome attribution is appreciated, but not required, as of version 3.0: "Font Awesome by Dave Gandy - http://fontawesome.io".
        Font Awesome CDN: https://fontawesomecdn.com/
        Font Awesome cheat sheet: http://fontawesome.io/cheatsheet/
        Font Awesome examples: http://fontawesome.io/examples/
        Font Awesome icons: http://fontawesome.io/icons/
      -->
      <!-- ================================================== -->
    </head>

<body>
    <nav class="navbar navbar-light bg-light">
        <div class="container">
          <a class="navbar-brand" href="#">
            Header content here
          </a>
        </div>
      </nav>
    <div class="container" style="background-color: beige;">
        Main content here
    </div>
    <script type="text/javascript" src=""></script>
</body>

</html>
EOF
fi