.class Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$1;
.super Ljava/util/TimerTask;
.source "GmeVideoBaseDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->startReverseTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;


# direct methods
.method constructor <init>(Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$1;->this$0:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder$1;->this$0:Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;

    invoke-static {v0}, Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;->access$000(Lcom/gme/video/sdk/edit/decoder/GmeVideoBaseDecoder;)V

    return-void
.end method
