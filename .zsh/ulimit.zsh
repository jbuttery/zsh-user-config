## User limit settings

## These are all soft limits; use -H for hard or -SH for both at once
ulimit -c 0         ## Max core dump size (512b blocks)
ulimit -d unlimited ## Max data segment size (KB)
ulimit -f unlimited ## Max file size (512b blocks)
ulimit -l unlimited ## Max size of locked-in memory (KB)
ulimit -m unlimited ## Max size of physical memory (KB) ("resident set size")
ulimit -n 1024      ## Max open file descriptors
ulimit -s 8192      ## Max size of stack (KB)
ulimit -t unlimited ## Max CPU time (s)
ulimit -u 512       ## Max processes
ulimit -v unlimited ## Max virtual memory

## EOF
########
