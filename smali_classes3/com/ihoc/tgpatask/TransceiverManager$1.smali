.class Lcom/ihoc/tgpatask/TransceiverManager$1;
.super Ljava/util/TimerTask;
.source "TransceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/TransceiverManager;->initBase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/TransceiverManager;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/TransceiverManager;I)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/ihoc/tgpatask/TransceiverManager$1;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    iput p2, p0, Lcom/ihoc/tgpatask/TransceiverManager$1;->val$delay:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 215
    :try_start_0
    const-string v0, "init task will exe after %d seconds"

    iget v1, p0, Lcom/ihoc/tgpatask/TransceiverManager$1;->val$delay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/ihoc/tgpatask/TransceiverManager$1;->this$0:Lcom/ihoc/tgpatask/TransceiverManager;

    invoke-virtual {v0}, Lcom/ihoc/tgpatask/TransceiverManager;->start()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
