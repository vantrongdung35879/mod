.class Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$6;
.super Ljava/lang/Object;
.source "GmeVideoEditControlNativeImpl.java"

# interfaces
.implements Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;


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

    .line 290
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$6;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 298
    invoke-static {p1, p2, p3}, Lcom/gme/video/sdk/jni/GmeVideoCallbackJni;->onGenerateComplete(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    .line 293
    invoke-static {p1}, Lcom/gme/video/sdk/jni/GmeVideoCallbackJni;->onGenerateProgress(I)V

    return-void
.end method
