.class public Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;
    .locals 1

    sget-object v0, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a:Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    invoke-direct {v0}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;-><init>()V

    sput-object v0, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a:Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    :cond_0
    sget-object v0, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a:Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    return-object v0
.end method

.method private native native_decrypt([B[B[B)I
.end method

.method private native native_encrypt([B[B[B)I
.end method


# virtual methods
.method public a([B[B)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0xffff

    new-array v2, v1, [B

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->native_decrypt([B[B[B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_2

    if-gt v1, p1, :cond_1

    goto :goto_1

    :cond_1
    new-array p2, p1, [B

    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_2
    :goto_1
    return-object v0
.end method

.method public b([B[B)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0xffff

    new-array v2, v1, [B

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->native_encrypt([B[B[B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_2

    if-gt v1, p1, :cond_1

    goto :goto_1

    :cond_1
    new-array p2, p1, [B

    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_2
    :goto_1
    return-object v0
.end method
