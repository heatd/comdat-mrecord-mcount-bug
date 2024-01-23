#pragma once

[[gnu::noinline]] inline void foo()
{
    __asm__ __volatile__("":::"memory");
}

