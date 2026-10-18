.class Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$5;
.super Ljava/lang/Object;
.source "GmeVideoEditControlNativeImpl.java"

# interfaces
.implements Lcom/gme/video/sdk/IGmeVideoEditControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->initJniCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$5;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewBuffer([BIII)V
    .locals 0

    .line 275
    invoke-static {p1, p2, p3, p4}, Lcom/gme/video/sdk/jni/GmeVideoCallbackJni;->onPreviewBuffer([BIII)V

    return-void
.end method

.method public onPreviewFinished()V
    .locals 0

    .line 285
    invoke-static {}, Lcom/gme/video/sdk/jni/GmeVideoCallbackJni;->onPreviewFinished()V

    return-void
.end method

.method public onPreviewProgress(J)V
    .locals 0

    .line 280
    invoke-static {p1, p2}, Lcom/gme/video/sdk/jni/GmeVideoCallbackJni;->onPreviewProgress(J)V

    return-void
.end method
