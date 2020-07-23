# https://juliadocs.github.io/Documenter.jl/stable/man/guide/#Package-Guide
push!(LOAD_PATH,"../src/") 

using Documenter, DocHosting

makedocs(sitename = "DocHosting.jl",
         format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
         modules = [DocHosting],
         pages = [
        "Home" => "index.md",
        "Examples" => "examples.md",
        "MIT" => "mit.md",
        "TSeries" => "tseries.md"
    ]
)