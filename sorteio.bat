@echo off
title Numeros Randomicos e Contadores
mode 60,30
color f1
set /a cont=0
:sorteio
set /a numero=(%random% %%100) + 1
set /a cont=%cont% + 1
echo.
echo ----------------------------
echo Numero Sorteado: %numero%
echo Qtde de Sorteio(s): %cont%
echo -----------------------------
echo.
set /p resp=Deseja sortear novo numero? [S/N]:
if /i %resp% equ s (goto:sorteio) else (exit)