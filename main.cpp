#include <iostream>
#include <memory>

#include "msgqueue.h"
#include "memoire.h"

int main(){
    auto queue = MsgQueue(1234, IPC_CREAT | 0666);
    Memoire memoire;
} 