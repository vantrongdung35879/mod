.class public final Lcom/tencent/itop/httpdns/base/jni/JniWrapper;
.super Ljava/lang/Object;
.source "JniWrapper.java"


# static fields
.field public static final DECRYPTION_MODE:I = 0x0

.field public static final ENCRYPTION_MODE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    :try_start_0
    const-string v0, "itophttpdns"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load specialhttpdns so failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/itop/httpdns/base/log/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dnsCrypt([BI)[B
    .locals 0

    .line 42
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/itop/httpdns/base/jni/Jni;->dnsCrypt([BI)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    .line 44
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "dns Crypt failed"

    invoke-static {p1, p0}, Lcom/tencent/itop/httpdns/base/log/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDnsKey()Ljava/lang/String;
    .locals 2

    .line 33
    :try_start_0
    invoke-static {}, Lcom/tencent/itop/httpdns/base/jni/Jni;->getDnsKey()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Get Dns Key failed"

    invoke-static {v1, v0}, Lcom/tencent/itop/httpdns/base/log/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const-string v0, ""

    return-object v0
.end method

.method public static getNetworkStack()I
    .locals 3

    .line 24
    :try_start_0
    invoke-static {}, Lcom/tencent/itop/httpdns/base/jni/Jni;->getNetworkStack()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 26
    :catchall_0
    const-string v0, "Get network stack failed"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/itop/httpdns/base/log/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
