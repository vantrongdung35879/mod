.class public Lcom/gme/video/sdk/jni/GmeVideoCallbackJni;
.super Ljava/lang/Object;
.source "GmeVideoCallbackJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native onGenerateComplete(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native onGenerateProgress(I)V
.end method

.method public static native onPreviewBuffer([BIII)V
.end method

.method public static native onPreviewFinished()V
.end method

.method public static native onPreviewProgress(J)V
.end method
