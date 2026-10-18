.class Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;
.super Ljava/lang/Object;
.source "GmeVideoScreenRecordControlImpl.java"

# interfaces
.implements Lcom/gme/video/sdk/capture/ScreenRecorder$ScreenRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;


# direct methods
.method private constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;-><init>(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;)V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;->access$100(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;)Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;->access$100(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;)Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;->onComplete(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;->access$100(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;)Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl$RecordListener;->this$0:Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;

    invoke-static {v0}, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;->access$100(Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;)Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControlCallback;->onStart()V

    :cond_0
    return-void
.end method
