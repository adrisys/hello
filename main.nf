#!/usr/bin/env nextflow

process sayHello {
  container 'community.wave.seqera.io/library/python:3.9--3d2c0eba6a865d91'
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
  Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
