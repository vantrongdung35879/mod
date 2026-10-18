.class Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;
.super Ljava/lang/Thread;
.source "INTLVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/video/INTLVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PCMDataThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/video/INTLVideoRecorder;


# direct methods
.method constructor <init>(Lcom/intlgame/video/INTLVideoRecorder;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PCMDataThread run mJniHandler = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v1}, Lcom/intlgame/video/INTLVideoRecorder;->access$000(Lcom/intlgame/video/INTLVideoRecorder;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLVideoMomentRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoRecorder;->access$000(Lcom/intlgame/video/INTLVideoRecorder;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoRecorder;->access$000(Lcom/intlgame/video/INTLVideoRecorder;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v4}, Lcom/intlgame/video/INTLVideoRecorder;->access$100(Lcom/intlgame/video/INTLVideoRecorder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/intlgame/video/INTLVideoRecorder;->getPCMData(JLjava/nio/ByteBuffer;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ltz v0, :cond_2

    .line 88
    iget-object v2, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v2}, Lcom/intlgame/video/INTLVideoRecorder;->access$100(Lcom/intlgame/video/INTLVideoRecorder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v3}, Lcom/intlgame/video/INTLVideoRecorder;->access$200(Lcom/intlgame/video/INTLVideoRecorder;)[S

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v3}, Lcom/intlgame/video/INTLVideoRecorder;->access$200(Lcom/intlgame/video/INTLVideoRecorder;)[S

    move-result-object v3

    array-length v3, v3

    if-eq v3, v0, :cond_1

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    new-array v4, v0, [S

    invoke-static {v3, v4}, Lcom/intlgame/video/INTLVideoRecorder;->access$202(Lcom/intlgame/video/INTLVideoRecorder;[S)[S

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v3}, Lcom/intlgame/video/INTLVideoRecorder;->access$200(Lcom/intlgame/video/INTLVideoRecorder;)[S

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 94
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoRecorder$PCMDataThread;->this$0:Lcom/intlgame/video/INTLVideoRecorder;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoRecorder;->access$200(Lcom/intlgame/video/INTLVideoRecorder;)[S

    move-result-object v2

    invoke-static {v0, v2}, Lcom/intlgame/video/INTLVideoRecorder;->access$300(Lcom/intlgame/video/INTLVideoRecorder;[S)V

    goto :goto_0

    .line 96
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PCMDataThread getPCMData error, length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method
