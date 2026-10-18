.class public Lcom/gcloudsdk/apollo/ApolloVoiceEngine;
.super Ljava/lang/Object;
.source "ApolloVoiceEngine.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    :try_start_0
    const-string v0, "GCloudVoice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "load library failed!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native APITrace(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native GetDeviceBrand()Ljava/lang/String;
.end method

.method public static final native GetDeviceModel()Ljava/lang/String;
.end method

.method public static final native GetHeadsetVoipState()Z
.end method

.method public static final native IsPause()Z
.end method

.method public static final native OnEvent(ILjava/lang/String;)V
.end method

.method public static final native Pause()I
.end method

.method public static final native Resume()I
.end method

.method public static final native SetBluetoothState(Z)V
.end method

.method public static final native SetHeadSetState(Z)V
.end method

.method public static final native StartBlueTooth()I
.end method

.method public static final native StopBlueTooth()I
.end method
