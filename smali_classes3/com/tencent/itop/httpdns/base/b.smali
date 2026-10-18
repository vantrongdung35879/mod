.class public final Lcom/tencent/itop/httpdns/base/b;
.super Ljava/lang/Object;
.source "NetworkStack.java"


# direct methods
.method public static a()I
    .locals 2

    .line 18
    invoke-static {}, Lcom/tencent/itop/httpdns/base/jni/JniWrapper;->getNetworkStack()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static a(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
