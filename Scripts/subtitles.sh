#!/bin/bash

# Diretório pai que contém as subpastas
diretorio_pai="/media/jacquesgomes/ExtraStorage/Courses/Marketing/MarketingCourses12"

# Itera sobre todas as subpastas do diretório pai
for subpasta in "$diretorio_pai"/*/; do
    # Verifica se a pasta "subtitles" já existe
    if [ ! -d "$subpasta/subtitles" ]; then
        # Se não existe, cria a pasta "subtitles"
        mkdir "$subpasta/subtitles"
    fi

    # Move todos os arquivos .srt para a pasta "subtitles" se houver algum
    shopt -s nullglob  # Ignora o caso em que não há arquivos .srt
    for arquivo in "$subpasta"/*.srt; do
        [ -e "$arquivo" ] && mv "$arquivo" "$subpasta/subtitles/"
    done
    shopt -u nullglob  # Restaura o comportamento padrão
done
