.class public final synthetic Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tencent/tme/live/room/c;

.field public final synthetic f$1:Lcom/tencent/tme/player/TMEPlayerState;

.field public final synthetic f$2:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/tme/live/room/c;Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda2;->f$0:Lcom/tencent/tme/live/room/c;

    iput-object p2, p0, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda2;->f$1:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object p3, p0, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda2;->f$2:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda2;->f$0:Lcom/tencent/tme/live/room/c;

    iget-object v1, p0, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda2;->f$1:Lcom/tencent/tme/player/TMEPlayerState;

    iget-object v2, p0, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda2;->f$2:Landroid/os/Message;

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/room/c;->$r8$lambda$hhOts3XJurw3_fwx2hhe0xw1XR4(Lcom/tencent/tme/live/room/c;Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V

    return-void
.end method
