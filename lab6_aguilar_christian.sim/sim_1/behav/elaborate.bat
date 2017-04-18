@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto d655cab1f3ad4ac3a0586a367c47a8d1 -m64 --debug typical --relax --mt 2 -L blk_mem_gen_v8_3_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot testbench_behav xil_defaultlib.testbench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
