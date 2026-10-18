.class public Lcom/gcloudsdk/apollo/EventMsg;
.super Ljava/lang/Object;
.source "EventMsg.java"


# static fields
.field public static final CMD_BIND:I = 0x2

.field public static final CMD_INIT_CM:I = 0xff

.field public static final CMD_WARM:I = 0x1


# instance fields
.field public arg1:I

.field public arg2:I

.field public cmd:I

.field public data:[B

.field public strarg:Ljava/lang/String;


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/gcloudsdk/apollo/EventMsg;->cmd:I

    .line 16
    iput p2, p0, Lcom/gcloudsdk/apollo/EventMsg;->arg1:I

    .line 17
    iput p3, p0, Lcom/gcloudsdk/apollo/EventMsg;->arg2:I

    .line 18
    iput-object p4, p0, Lcom/gcloudsdk/apollo/EventMsg;->strarg:Ljava/lang/String;

    return-void
.end method
