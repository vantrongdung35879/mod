.class public final Lcom/tencent/gsdk/i0;
.super Ljava/lang/Object;
.source "JniWrapper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "gem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Load gem so failed"

    invoke-static {v1, v0}, Lcom/tencent/gsdk/x;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/gsdk/utils/jni/Jni;->getIv()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Get Iv failed"

    invoke-static {v1, v0}, Lcom/tencent/gsdk/x;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    const-string v0, ""

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/gsdk/utils/jni/Jni;->getSecretKey()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Get Secret Key failed"

    invoke-static {v1, v0}, Lcom/tencent/gsdk/x;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    const-string v0, ""

    return-object v0
.end method
