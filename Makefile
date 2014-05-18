FILENAME=quantumtypes
SRCDIR=$(shell pwd)/src/
BUILDDIR=$(shell pwd)/build/
DISTDIR=$(shell pwd)/dist/

all:
	echo ${BUILDDIR}
	-mkdir -p ${BUILDDIR}
	-mkdir -p ${DISTDIR}
	cd src && \
	pdflatex -output-directory=${BUILDDIR} -file-line-error ${FILENAME}.tex
	cp ${BUILDDIR}/${FILENAME}.pdf ${DISTDIR}

clean:
	-rm -rf dist
	find . -name *~ | xargs rm -f

