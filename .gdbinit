set history filename ~/.gdb_history
set history save

# next intruction with examine
define nie
        ni
        x/i $pc
end

# examine RISC-V register with docs name
define ereg
        if $argc != 1
                printf "usage: ereg RISC-V_register_number\n"
        else
                if $arg0 > 31 || $arg0 < 0
                        printf "Register numbers: [0, 31]\n"
                else

                        if $arg0 == 0
                                printf "Hardwired zero (x0)\n"
                                i r zero
                        end

                        if $arg0 == 1
                                printf "Return address (x1)\n"
                                i r ra
                        end

                        if $arg0 == 2
                                printf "Stack pointer (x2)\n"
                                i r sp
                        end

                        if $arg0 == 3
                                printf "Global pointer (x3)\n"
                                i r gp
                        end

                        if $arg0 == 4
                                printf "Thread pointer (x4)\n"
                                i r tp
                        end

                        if $arg0 == 5
                                printf "Temporary register 0 (x5)\n"
                                i r t0
                        end

                        if $arg0 == 6
                                printf "Temporary register 1 (x6)\n"
                                i r t1
                        end

                        if $arg0 == 7
                                printf "Temporary register 2 (x7)\n"
                                i r t2
                        end

                        if $arg0 == 8
                                printf "Saved register 0 / Frame pointer (x8)\n"
                                i r s0
                        end

                        if $arg0 == 9
                                printf "Saved register 1 (x9)\n"
                                i r a0
                        end

                        if $arg0 == 10
                                printf "Function argument 0 / Return value 0 (x10)\n"
                                i r a0
                        end

                        if $arg0 == 11
                                printf "Function argument 1 / Return value 1 (x11)\n"
                                i r a1
                        end

                        if $arg0 == 12
                                printf "Function argument 2 (x12)\n"
                                i r a2
                        end

                        if $arg0 == 13
                                printf "Function argument 3 (x13)\n"
                                i r a3
                        end

                        if $arg0 == 14
                                printf "Function argument 4 (x14)\n"
                                i r a4
                        end

                        if $arg0 == 15
                                printf "Function argument 5 (x15)\n"
                                i r a5
                        end

                        if $arg0 == 16
                                printf "Function argument 6 (x16)\n"
                                i r a6
                        end

                        if $arg0 == 17
                                printf "Function argument 7 (x17)\n"
                                i r a7
                        end

                        if $arg0 == 18
                                printf "Saved register 2 (x18)\n"
                                i r s2
                        end

                        if $arg0 == 19
                                printf "Saved register 3 (x19)\n"
                                i r s3
                        end

                        if $arg0 == 20
                                printf "Saved register 4 (x20)\n"
                                i r s4
                        end

                        if $arg0 == 21
                                printf "Saved register 5 (x21)\n"
                                i r s5
                        end

                        if $arg0 == 22
                                printf "Saved register 6 (x22)\n"
                                i r s6
                        end

                        if $arg0 == 23
                                printf "Saved register 7 (x23)\n"
                                i r s7
                        end

                        if $arg0 == 24
                                printf "Saved register 8 (x24)\n"
                                i r s8
                        end

                        if $arg0 == 25
                                printf "Saved register 9 (x25)\n"
                                i r s9
                        end

                        if $arg0 == 26
                                printf "Saved register 10 (x26)\n"
                                i r s10
                        end

                        if $arg0 == 27
                                printf "Saved register 11 (x27)\n"
                                i r s11
                        end

                        if $arg0 == 28
                                printf "Temporary register 3 (x28)\n"
                                i r t3
                        end

                        if $arg0 == 29
                                printf "Temporary register 4 (x29)\n"
                                i r t4
                        end

                        if $arg0 == 30
                                printf "Temporary register 5 (x30)\n"
                                i r t5
                        end

                        if $arg0 == 31
                                printf "Temporary register 6 (x31)\n"
                                i r t6
                        end
                end

        end
end