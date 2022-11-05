@echo off
title Jogo de Advinhar
mode 60,30
color f1

:sorteio
cls
set /a tentativas=0
set /a numero=(%random% %%50) + 1
echo.
echo ---------------------------------
echo    ADVINHE O NUMERO SORTEADO                          
echo ---------------------------------
echo.

:resposta
set /a tentativas = %tentativas% + 1
set /p resp=Qual e o numero sorteado? 
echo --------------------------------

if /i %resp% == %numero% (goto:vitoria) else (
    if %tentativas% LSS 5 (
        echo.
        echo.
        echo Tentativas Realizadas: %tentativas%
        echo.
        echo.
         if %resp% GTR %numero% (
            echo Tente um numero menor...
        ) else (
            echo Tente um numero maior...
        )
        echo.
        echo.
        goto:resposta
    )
    if %tentativas% GEQ 5 (
        echo.
        echo.
        echo Tentativas Realizadas: %tentativas%
        echo.
        echo.
        goto:derrota
    )
)

:vitoria
cls
echo ----------------------------
echo VITORIA! Voce acertou!
echo -----------------------------
echo Numero Sorteado: %numero%
echo Quantidade de Tentativas: %tentativas%
echo -----------------------------
echo.
set /p resp=Deseja jogar novamente? [S/N]: 
if /i %resp% equ s (goto:sorteio) else (exit)

:derrota
cls
echo ----------------------------
echo DERROTA. Tentativas esgotadas...
echo -----------------------------
echo O numero sorteado era: %numero%
echo -----------------------------
echo.
set /p resp=Deseja jogar novamente? [S/N]: 
if /i %resp% equ s (goto:sorteio) else (exit)