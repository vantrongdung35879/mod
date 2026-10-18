.class Lcom/gme/video/sdk/pipeline/EventPipeline$1;
.super Landroid/os/Handler;
.source "EventPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/pipeline/EventPipeline;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/pipeline/EventPipeline;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/pipeline/EventPipeline;Landroid/os/Looper;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/gme/video/sdk/pipeline/EventPipeline$1;->this$0:Lcom/gme/video/sdk/pipeline/EventPipeline;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 32
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
