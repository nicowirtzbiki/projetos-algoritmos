module Saida
using Juno, Formatting
export escreve_arquivo_saida
"""
    escreve_arquivo_saida(caminho_saida::String, dados::Array{Tuple{Int64,Int64,Int64,Float64}})

documentation
"""
function escreve_arquivo_saida(
    caminho_saida::String,
    dados::Array{Tuple{Int64,Int64,Int64,Float64}},
    formata_valor::Bool,
)

    io = open(caminho_saida, "w")
    fmt = "%11.2f"
    Juno.@progress for i in dados
        valor = i[4]
        if formata_valor
            valor = lstrip(sprintf1(fmt, valor))
        end
        println(io, i[1], " ", i[2], " ", i[3], " ", valor)
    end
    close(io)




end # function






end  # module od
