module LightGraphsMatching

using LightGraphs

using SparseArrays: spzeros

import BlossomV # 'using BlossomV'  leads to naming conflicts with JuMP

export MatchingResult, minimum_weight_perfect_matching

"""
    struct MatchingResult{U}
        weight::U
        mate::Vector{Int}
    end

A type representing the result of a matching algorithm.

    weight: total weight of the matching

    mate:    `mate[i] = j` if vertex `i` is matched to vertex `j`.
             `mate[i] = -1` for unmatched vertices.
"""
struct MatchingResult{U<:Real}
    weight::U
    mate::Vector{Int}
end

include("blossomv.jl")

end # module
