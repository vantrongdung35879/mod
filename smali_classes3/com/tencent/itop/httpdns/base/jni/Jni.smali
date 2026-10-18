.class public Lcom/tencent/itop/httpdns/base/jni/Jni;
.super Ljava/lang/Object;
.source "Jni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native dnsCrypt([BI)[B
.end method

.method public static native getDnsKey()Ljava/lang/String;
.end method

.method public static native getNetworkStack()I
.end method
