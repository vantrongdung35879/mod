.class Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$4;
.super Ljava/lang/Object;
.source "GmeVideoEditControlNativeImpl.java"

# interfaces
.implements Lcom/gme/video/sdk/edit/GmeVideoEditGenerator$GeneratorProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->initGenerator()V
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

    .line 99
    iput-object p1, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$4;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$4;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->access$100(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$4;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->access$100(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    sget-object p3, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GenerateCallback is null,ignore event = %d, %s"

    invoke-static {p3, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$4;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->access$100(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl$4;->this$0:Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->access$100(Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;)Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gme/video/sdk/IGmeVideoEditControlGenerateCallback;->onProgress(I)V

    goto :goto_0

    .line 105
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/edit/GmeVideoEditControlNativeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GenerateCallback is null,ignore progress percent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
