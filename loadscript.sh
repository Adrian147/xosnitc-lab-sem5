load --exhandler $HOME/myxos/spl/spl_progs/exhandler.xsm
load --int=timer $HOME/myxos/spl/spl_progs/timer.xsm
load --int=7 $HOME/myxos/spl/spl_progs/int7.xsm
load --os $HOME/myxos/spl/spl_progs/os_startup.xsm
load --int=1 $HOME/myxos/spl/spl_progs/int1.xsm
load --int=2 $HOME/myxos/spl/spl_progs/int2.xsm
load --int=3 $HOME/myxos/spl/spl_progs/int3.xsm
load --int=4 $HOME/myxos/spl/spl_progs/int4.xsm

load --init $HOME/myxos/apl/apl_progs/create_syscall.xsm
load --init $HOME/myxos/apl/apl_progs/RW_err_syscall.xsm
load --init $HOME/myxos/apl/apl_progs/seek_err_syscall.xsm
load --init $HOME/myxos/apl/apl_progs/RW_syscall.xsm
load --init $HOME/myxos/apl/apl_progs/syscall.xsm

./spl --int=1 $HOME/myxos/spl/spl_progs/int1_syscall.spl
./spl --int=2 $HOME/myxos/spl/spl_progs/int2_syscall.spl
./spl --int=4 $HOME/myxos/spl/spl_progs/int4_syscall.spl
./spl --int=3 $HOME/myxos/spl/spl_progs/int3_syscall.spl

./apl $HOME/myxos/apl/apl_progs/RW_err_syscall.apl
./apl $HOME/myxos/apl/apl_progs/seek_err_syscall.apl
./apl $HOME/myxos/apl/apl_progs/RW_syscall.apl
./apl $HOME/myxos/apl/apl_progs/syscall.apl
