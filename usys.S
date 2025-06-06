// File: usys.S	Name:Sagi Menahem	ID:208645937
#include "syscall.h"
#include "traps.h"

#define SYSCALL(name) \
  .globl name; \
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
SYSCALL(exit)
SYSCALL(wait)
SYSCALL(pipe)
SYSCALL(read)
SYSCALL(write)
SYSCALL(close)
SYSCALL(kill)
SYSCALL(exec)
SYSCALL(open)
SYSCALL(mknod)
SYSCALL(unlink)
SYSCALL(fstat)
SYSCALL(link)
SYSCALL(mkdir)
SYSCALL(chdir)
SYSCALL(dup)
SYSCALL(getpid)
SYSCALL(sbrk)
SYSCALL(sleep)
SYSCALL(uptime)
SYSCALL(mount)
SYSCALL(umount)
SYSCALL(printmounts)
SYSCALL(printdevices)
SYSCALL(unshare)
SYSCALL(usleep)
SYSCALL(ioctl)
SYSCALL(getppid)
SYSCALL(getcpu)
SYSCALL(getmem)
SYSCALL(kmemtest)
// Macro to define the system call entry for `cps137`.
// This connects the user-space `cps137` system call to its kernel implementation.
SYSCALL(cps137)
