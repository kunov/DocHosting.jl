# https://juliadocs.github.io/Documenter.jl/stable/man/guide/#Package-Guide
push!(LOAD_PATH, "../src/") 

using Documenter, DocHosting

makedocs(sitename = "Blogging ",
         format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
         modules = [DocHosting],
         pages = [
        "Introduction" => "index.md",
        "Article 1" => "article1.md"
    ]
)

deploydocs(
    repo = "github.com/kunov/DocHosting.jl.git",
)