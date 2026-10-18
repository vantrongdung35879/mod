.class public Lcom/gme/video/sdk/jni/JniLoader;
.super Ljava/lang/Object;
.source "JniLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadSo()V
    .locals 1

    .line 6
    const-string v0, "GmeVideoFFmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    const-string v0, "GmeVideoSDK"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
