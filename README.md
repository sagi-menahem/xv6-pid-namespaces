#   xv6-pid-namespaces

This project focuses on enhancing the xv6 operating system with support for process isolation using PID namespaces. It involves modifying xv6 to implement and utilize containerization concepts.

Task #2 for the 20594 course of the Open University.

The full assignment (in Hebrew) is in the [Task 2.pdf](Task%202.pdf) file.

##   Table of Contents

* [Project Description](#project-description)
* [Objectives](#objectives)
* [Implementation Details](#implementation-details)
* [Usage](#usage)
* [Files Included](#files-included)
* [Author](#author)

##   Project Description

This project extends the xv6 operating system to support process isolation through the implementation of PID namespaces. Process isolation is a key aspect of containerization, allowing for the virtualization of the process ID space. This project enables the creation of isolated user-space environments within xv6.

##   Objectives

The main objectives of this project are:

* To understand the concepts of user-space isolation and containerization.
* To learn about the implementation of PID namespaces in operating systems.
* To implement the `unshare` system call for creating new namespaces.
* To modify the `fork` system call to properly assign processes to namespaces.
* To adapt existing system calls to be namespace-aware.

##   Implementation Details

The implementation involves modifying several xv6 system files:

* `defs.h`
* `user.h`
* `sysproc.c`
* `usys.S`
* `syscall.c`
* `syscall.h`
* `proc.c`
* `ps.c`
* `Makefile`

Key aspects of the implementation include:

* Implementing the `unshare` system call to create new PID namespaces.
* Modifying the `fork` system call to ensure new processes are created within the correct namespace.
* Adjusting the `ps` command to display process IDs correctly in the context of namespaces (including external PIDs).
* Ensuring that other relevant system calls function correctly with namespaces.

##   Usage

1.  Compile the modified xv6 operating system.
2.  Run xv6.
3.  Use the provided commands (e.g., `pouch`) to create and manage containers.
4.  Execute the `ps` command to observe process IDs within and outside of containers.

##   Files Included

* `defs.h`: System-wide definitions.
* `user.h`: User-space definitions.
* `sysproc.c`: System process-related functions.
* `usys.S`: User system call interface.
* `syscall.c`: System call table.
* `syscall.h`: System call numbers.
* `proc.c`: Process management code.
* `ps.c`: Source code for the `ps` command.
* `Makefile`: Build file for xv6.
* `original xv6-1.zip`: The original xv6 source code provided for the assignment.

##   Author

Sagi Menahem.
