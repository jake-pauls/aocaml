(lang dune 3.5)

(name aocaml)

(generate_opam_files true)

(source
 (github jake-pauls/aocaml))

(authors "Jake Pauls")

(maintainers "Jake Pauls")

(package
 (name aocaml)
 (synopsis "advent of ocaml ❄️")
 (description "decided to start writing some ocaml in preparation for surf")
 (depends ocaml dune)
 (tags
  ("advent of code 2022")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
