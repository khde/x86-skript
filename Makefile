LX = latexmk
INPUT = main
OUTPUT = x86-skript

.PHONY: default pdf clean

default: pdf clean

pdf:
	@echo "Building pdf:"
	cd src/ && $(LX) -jobname=$(OUTPUT) $(INPUT).tex -pdf && mv $(OUTPUT).pdf ../pdf

clean:
	@echo "Cleaning up:"
	cd src/ && $(LX) $(OUTPUT).log -c

