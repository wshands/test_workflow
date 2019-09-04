version 1.0

workflow helloworld {
    input {
      String greeting
    }
    call hello {
       input:
           greeting = greeting
     }

    meta {
        author : "Walt Shands"
        email : "wshands@gmail.com"
        description: "This is a hello world example"
     }
}

task hello {
    input {
      String greeting
    }
  command {
    echo "${greeting}"
  }
}
