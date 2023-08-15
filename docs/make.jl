using MyExample
using Documenter

DocMeta.setdocmeta!(MyExample, :DocTestSetup, :(using MyExample); recursive=true)

makedocs(;
    modules=[MyExample],
    authors="wendi gunawan",
    repo="https://github.com/wendigunawan00/MyExample.jl/blob/{commit}{path}#{line}",
    sitename="MyExample.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://wendigunawan00.github.io/MyExample.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/wendigunawan00/MyExample.jl",
    devbranch="master",
)
