@echo off
for /r %%f in (ARTIFACT*.tex) do runLaTeX %%f
