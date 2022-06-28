NAME = mandelbrot

RTL_SOURCES?=sources.txt
TOOLS=~/asplos22-hardware-debugging-artifact/veripass/tools.py



withtask.v: ${RTL_SOURCES} instrument.cfg
	${TOOLS} --top top -F ${RTL_SOURCES} --config instrument.cfg --reset reset

