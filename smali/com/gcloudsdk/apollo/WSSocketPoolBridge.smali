.class public Lcom/gcloudsdk/apollo/WSSocketPoolBridge;
.super Ljava/lang/Object;
.source "WSSocketPoolBridge.java"


# static fields
.field private static LOGTAG:Ljava/lang/String; = "WSSocketPool"

.field private static mWSSocketPool:Lcom/gcloudsdk/apollo/WSSocketPool;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(I)I
    .locals 1

    .line 56
    sget-object v0, Lcom/gcloudsdk/apollo/WSSocketPoolBridge;->mWSSocketPool:Lcom/gcloudsdk/apollo/WSSocketPool;

    invoke-virtual {v0, p0}, Lcom/gcloudsdk/apollo/WSSocketPool;->close(I)I

    move-result p0

    return p0
.end method

.method public static connect(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 36
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    sget-object v0, Lcom/gcloudsdk/apollo/WSSocketPoolBridge;->mWSSocketPool:Lcom/gcloudsdk/apollo/WSSocketPool;

    invoke-virtual {v0, p0, p1, p2}, Lcom/gcloudsdk/apollo/WSSocketPool;->connect(ILjava/lang/String;I)I

    move-result p0

    return p0

    :catch_0
    const/4 p0, -0x2

    return p0
.end method

.method public static init()V
    .locals 1

    .line 26
    sget-object v0, Lcom/gcloudsdk/apollo/WSSocketPoolBridge;->mWSSocketPool:Lcom/gcloudsdk/apollo/WSSocketPool;

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Lcom/gcloudsdk/apollo/WSSocketPool;

    invoke-direct {v0}, Lcom/gcloudsdk/apollo/WSSocketPool;-><init>()V

    sput-object v0, Lcom/gcloudsdk/apollo/WSSocketPoolBridge;->mWSSocketPool:Lcom/gcloudsdk/apollo/WSSocketPool;

    return-void
.end method

.method public static recv(I[B)I
    .locals 1

    .line 51
    sget-object v0, Lcom/gcloudsdk/apollo/WSSocketPoolBridge;->mWSSocketPool:Lcom/gcloudsdk/apollo/WSSocketPool;

    invoke-virtual {v0, p0, p1}, Lcom/gcloudsdk/apollo/WSSocketPool;->recv(I[B)I

    move-result p0

    return p0
.end method

.method public static send(I[B)I
    .locals 1

    .line 45
    sget-object v0, Lcom/gcloudsdk/apollo/WSSocketPoolBridge;->mWSSocketPool:Lcom/gcloudsdk/apollo/WSSocketPool;

    invoke-virtual {v0, p0, p1}, Lcom/gcloudsdk/apollo/WSSocketPool;->send(I[B)I

    move-result p0

    return p0
.end method
