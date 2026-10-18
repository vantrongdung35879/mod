.class Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;
.super Ljava/lang/Object;
.source "INTLVideoMomentPlayerActivity.java"

# interfaces
.implements Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/video/INTLVideoMomentPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GmeVideoPlayControlCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError nCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayVideoActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFirstFrameDecoded(Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;)V
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFirstFrameDecoded\uff0cget info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->fps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;->bitRate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayVideoActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlay()V
    .locals 3

    .line 181
    const-string v0, "PlayVideoActivity"

    const-string v1, "onPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$100(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)V

    .line 183
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$200(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->getFileDuration()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$300(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;J)V

    return-void
.end method

.method public onPlayBufferingEnd()V
    .locals 2

    .line 175
    const-string v0, "PlayVideoActivity"

    const-string v1, "onPlayBufferingEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$100(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)V

    return-void
.end method

.method public onPlayBufferingStart()V
    .locals 2

    .line 169
    const-string v0, "PlayVideoActivity"

    const-string v1, "onPlayBufferingStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$000(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)V

    return-void
.end method

.method public onPlayStop()V
    .locals 5

    .line 199
    const-string v0, "PlayVideoActivity"

    const-string v1, "onPlayStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$802(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;Z)Z

    .line 202
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$902(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;Z)Z

    .line 203
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$1000(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/intlgame/video/R$mipmap;->img_bofang:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$700(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$200(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->getFileDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 205
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$600(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$200(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gme/video/sdk/IGmeVideoPlayControl;->getFileDuration()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$500(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPlayingProgress(JI)V
    .locals 2

    .line 188
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {p3}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$400(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {p3}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$600(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v0, p1, p2}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$500(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object p3, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$GmeVideoPlayControlCallback;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {p3}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$700(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object p3

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
