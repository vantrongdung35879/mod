.class public Lcom/gsdk/gcloud/netinterface/NetInterfaceHelper;
.super Ljava/lang/Object;
.source "NetInterfaceHelper.java"


# static fields
.field private static LOGTAG:Ljava/lang/String; = "NetInterfaceHelper"

.field private static mMsgWorker:Lcom/gsdk/gcloud/netinterface/MsgWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 12
    sget-object v0, Lcom/gsdk/gcloud/netinterface/NetInterfaceHelper;->mMsgWorker:Lcom/gsdk/gcloud/netinterface/MsgWorker;

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/gsdk/gcloud/netinterface/MsgWorker;

    invoke-direct {v0, p0}, Lcom/gsdk/gcloud/netinterface/MsgWorker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gsdk/gcloud/netinterface/NetInterfaceHelper;->mMsgWorker:Lcom/gsdk/gcloud/netinterface/MsgWorker;

    .line 16
    new-instance p0, Ljava/lang/Thread;

    sget-object v0, Lcom/gsdk/gcloud/netinterface/NetInterfaceHelper;->mMsgWorker:Lcom/gsdk/gcloud/netinterface/MsgWorker;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static pushMsg(IIILjava/lang/String;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/gsdk/gcloud/netinterface/EventMsg;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gsdk/gcloud/netinterface/EventMsg;-><init>(IIILjava/lang/String;)V

    .line 23
    sget-object p0, Lcom/gsdk/gcloud/netinterface/NetInterfaceHelper;->mMsgWorker:Lcom/gsdk/gcloud/netinterface/MsgWorker;

    invoke-virtual {p0, v0}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->sendMessage(Lcom/gsdk/gcloud/netinterface/EventMsg;)V

    return-void
.end method
