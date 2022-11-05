@echo off
title Jokenpo
mode 60,30
color f1

set /a jogos=0
echo Bem vindo
set /p nome=Digite seu nome: 
goto:menu

:menu
cls
set /a computador=(%random% %%5) + 1

echo        (o  o )
    echo ===0oo== ( ) ==oo0===
    echo       Jokenpo
    echo ====================
    echo %nome%, escolha uma opcao.
    echo [1] Pedra
    echo [2] Papel
    echo [3] Tesoura
    echo [4] Lagarto
    echo [5] Spock
    echo [E] Encerrar Jogo 
    echo [R] Regras
    echo ====================
    set /p op=Escolha uma opcao:  
    if %op% == 1 (
        if %computador% == 1 (
            echo Computador jogou pedra
            echo Empate
            set /a empates = %empates% + 1
            goto:contador
        )
        if %computador% == 2 (
            echo Computador jogou papel
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
        if %computador% == 3 (
            echo Computador jogou tesoura
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
        if %computador% == 4 (
            echo Computador jogou lagarto
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
        if %computador% == 5 (
            echo Computador jogou spock
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
    )
    if %op% == 2 (
        if %computador% == 1 (
            echo Computador jogou pedra
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
        if %computador% == 2 (
            echo Computador jogou papel
            echo Empate
            set /a empates = %empates% + 1
            goto:contador
        )
        if %computador% == 3 (
            echo Computador jogou tesoura
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
        if %computador% == 4 (
            echo Computador jogou lagarto
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
        if %computador% == 5 (
            echo Computador jogou spock
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
    )
    if %op% == 3 (
        if %computador% == 1 (
            echo Computador jogou pedra
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
        if %computador% == 2 (
            echo Computador jogou papel
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
        if %computador% == 3 (
            echo Computador jogou tesoura
            echo Empate
            set /a empates = %empates% + 1
            goto:contador
        )
        if %computador% == 4 (
            echo Computador jogou lagarto
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
        if %computador% == 5 (
            echo Computador jogou spock
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
    )
    if %op% == 4 (
        if %computador% == 1 (
            echo Computador jogou pedra
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
        if %computador% == 2 (
            echo Computador jogou papel
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
        if %computador% == 3 (
            echo Computador jogou tesoura
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
        if %computador% == 4 (
            echo Computador jogou lagarto
            echo Empate
            set /a empates = %empates% + 1
            goto:contador
        )
        if %computador% == 5 (
            echo Computador jogou spock
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
    )
    if %op% == 5 (
        if %computador% == 1 (
            echo Computador jogou pedra
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
        if %computador% == 2 (
            echo Computador jogou papel
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
        if %computador% == 3 (
            echo Computador jogou tesoura
            echo Vitoria
            set /a vitorias = %vitorias% + 1
            goto:contador
        )
        if %computador% == 4 (
            echo Computador jogou lagarto
            echo Derrota
            set /a derrotas = %derrotas% + 1
            goto:contador
        )
        if %computador% == 5 (
            echo Computador jogou spock
            echo Empate
            set /a empates = %empates% + 1
            goto:contador
        )
    )
    if /i %op% == e (exit) 
    if /i %op% == r (goto:regras) else (
        echo.
        echo --------------
        echo Opcao Invalida!
        echo --------------
        echo.
        pause
        goto:inicio
    )

:regras
cls
echo Pedra:
echo       Empata com Pedra; Ganha de Tesoura e Lagarto; Perde de papel e Spock;
echo.
echo Papel:
echo       Empata com Papel; Ganha de Pedra e Spock; Perde de Tesoura e Lagarto;
echo.
echo Tesoura:
echo       Empata com Tesoura; Ganha de Lagarto e Papel; Perde de Pedra e Spock;
echo.
echo Lagarto:
echo       Empata com Lagarto; Ganha de Papel e Spock; Perde de Pedra e Tesoura;
echo.
echo Spock:
echo       Empata com Spock; Ganha de Pedra e Tesoura; Perde de Lagarto e Papel;
echo.
pause
goto:inicio

:contador
set /a jogos = %jogos% + 1
echo ----------------------
echo Derrotas: %derrotas%
echo ----------------------
echo Vitorias: %vitorias%
echo ----------------------
echo Empates: %empates%
echo ----------------------
echo.
pause
goto:menu