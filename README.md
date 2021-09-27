# LightGraphsMatching


Matching algorithms on top of [LightGraphs](https://github.com/JuliaGraphs/LightGraphs.jl).

A temporary version for `minimum_weight_perfect_matching` only.

## Install 

```julia
] add https://github.com/chkwon/LightGraphsMatching.jl#tsp
```



## Usage

The results of any matching is returned as a `MatchingResult` struct
containing the `mate` and `weight` fields.


### Perfect matching


```julia
using LightGraphs, LightGraphsMatching
g = complete_graph(4)
w = Dict{Edge,Float64}()
w[Edge(1,3)] = 10
w[Edge(1,4)] = 0.5
w[Edge(2,3)] = 11
w[Edge(2,4)] = 2
w[Edge(1,2)] = 100

# find the perfect matching of minimum weight
match = minimum_weight_perfect_matching(g, w, 50)
# match.mate[1] == 4
# match.mate[4] == 1
# match.mate[2] == 3
# match.mate[3] == 2
# match.weight ≈ 11.5
```
