
<!-- README.md is generated from README.Rmd. Please edit that file -->

# README

<!-- badges: start -->

<!-- badges: end -->

How to reference a child document, within the parent .Rmd

## to a child .Rmd

1.  Child document should have a standard code-chunk, legal code within

2.  Parent code-chunk will reference child in the parent’s code-chunk
    header
    
      - `{r child='src/example_child-document.Rmd'}`

**Advantage**: more than one code-chunk can call the same child
sub-routine

## to child .R

1.  Child document will not have R Markdown code chunks
2.  Separate each sub-routine with a comment, followed by appropriate
    code. For example:

<!-- end list -->

    # @kintr chunk_name
    plot(cars)

3.  Parent code-chunk will reference child sub-routine via sub-routine
    name

> `{r chunk_name}`

**Advantage**: multiple sub-routines can be stored in a single .R file.

## Code Examples

  - [Parent script](01.example.Rmd)
  - [Child script 1](src/example_starwars.R)
  - [Child script 2](src/example_trees.Rmd)
  - [Output – GitHub Markdown Document](01_example.md)
  - [Output – GitHub 01\_example.html](01_example.htmls)
