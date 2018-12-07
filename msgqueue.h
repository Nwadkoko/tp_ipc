#ifndef MSGQUEUE_H
#define MSGQUEUE_H

class MsgQueue {
private:
    int msgqid;
public:
    MsgQueue();
    MsgQueue(key_t key, int msgflg);
    int getMsgQid();
    void sendMessage(int msqid, const void* msgp, size_t msgsz, int msgflg);
    void readMessage(int msqid, void* msgp, size_t msgsz, long msgtyp, int msgflg);
    ~MsgQueue();
};

#endif //MSGQUEUE_H