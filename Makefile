all: document presentation

document:
	latexmk -auxdir=./20_bin/out/ -outdir=./20_bin/out/ -pdf ./10_env/document.tex && mv ./20_bin/out/*.pdf ./20_bin/pdf/

presentation:
	latexmk -auxdir=./20_bin/out/ -outdir=./20_bin/out/ -pdf ./10_env/presentation.tex && mv ./20_bin/out/*.pdf ./20_bin/pdf/

clean:
	latexmk -c