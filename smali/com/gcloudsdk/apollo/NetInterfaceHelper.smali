.class public Lcom/gcloudsdk/apollo/NetInterfaceHelper;
.super Ljava/lang/Object;
.source "NetInterfaceHelper.java"


# static fields
.field private static LOGTAG:Ljava/lang/String; = "NetInterfaceHelper"

.field private static mMsgWorker:Lcom/gcloudsdk/apollo/MsgWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/gcloudsdk/apollo/NetInterfaceHelper;->mMsgWorker:Lcom/gcloudsdk/apollo/MsgWorker;

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/gcloudsdk/apollo/MsgWorker;

    invoke-direct {v0, p0}, Lcom/gcloudsdk/apollo/MsgWorker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gcloudsdk/apollo/NetInterfaceHelper;->mMsgWorker:Lcom/gcloudsdk/apollo/MsgWorker;

    .line 31
    new-instance p0, Ljava/lang/Thread;

    sget-object v0, Lcom/gcloudsdk/apollo/NetInterfaceHelper;->mMsgWorker:Lcom/gcloudsdk/apollo/MsgWorker;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static pushMsg(IIILjava/lang/String;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/gcloudsdk/apollo/EventMsg;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gcloudsdk/apollo/EventMsg;-><init>(IIILjava/lang/String;)V

    .line 38
    sget-object p0, Lcom/gcloudsdk/apollo/NetInterfaceHelper;->mMsgWorker:Lcom/gcloudsdk/apollo/MsgWorker;

    invoke-virtual {p0, v0}, Lcom/gcloudsdk/apollo/MsgWorker;->sendMessage(Lcom/gcloudsdk/apollo/EventMsg;)V

    return-void
.end method
