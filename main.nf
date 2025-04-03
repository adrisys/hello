#!/usr/bin/env nextflow

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

workflow {
  Channel.of('HI2', 'H2I', 'HI2', 'HI2') | sayHello | view
}

workflow.onComplete {
    println("The secret is: ${secrets.testsffecret}")
}
