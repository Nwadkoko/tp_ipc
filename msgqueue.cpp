#include "msgqueue.h"

MsgQueue::MsgQueue(){

}

MsgQueue::MsgQueue(int key, int msgflg){
    this->msgqid = msgget(key, msgflg);
    std::cout << this->msgqid;
}

int MsgQueue::getMsgQid(){

}
    
void MsgQueue::sendMessage(int msqid, const void* msgp, size_t msgsz, int msgflg){

}

void MsgQueue::readMessage(int msqid, void* msgp, size_t msgsz, long msgtyp, int msgflg){

}

MsgQueue::~MsgQueue(){

} 
