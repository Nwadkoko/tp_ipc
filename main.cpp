#include "msgqueue.h"

int main(){
    MsgQueue *_msgQueue = new MsgQueue(1234, IPC_CREAT | 0666);
} 