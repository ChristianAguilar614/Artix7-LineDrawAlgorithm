onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib framebuffer_opt

do {wave.do}

view wave
view structure
view signals

do {framebuffer.udo}

run -all

quit -force
