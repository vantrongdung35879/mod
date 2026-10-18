.class Lcom/intlgame/video/INTLVideoMomentPlayerActivity$1;
.super Ljava/lang/Object;
.source "INTLVideoMomentPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->startTimeoutTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$1;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$1;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    invoke-static {v0}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$200(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;)Lcom/gme/video/sdk/IGmeVideoPlayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$1;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    sget v1, Lcom/intlgame/video/R$string;->timeout_tips:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/intlgame/video/INTLVideoMomentPlayerActivity$1;->this$0:Lcom/intlgame/video/INTLVideoMomentPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intlgame/video/INTLVideoMomentPlayerActivity;->access$1102(Lcom/intlgame/video/INTLVideoMomentPlayerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
