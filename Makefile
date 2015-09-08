all: slides.pdf

slides.pdf: %.pdf: %.latex %.mp beamerthemeD3S.sty ArrayMin.java ArrayMinStepByStep.java
	@mpost $*.mp
	@pdflatex $*.latex
	@pdflatex $*.latex

present: all
	@dspdfviewer -a no -f slides.pdf

present-zathura: all
	@zathura slides.pdf
