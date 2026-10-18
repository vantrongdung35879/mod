.class public Lcom/tencent/tme/live/f1/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/f1/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
    .locals 0

    sget-object p2, Lcom/tencent/tme/player/TMEPlayerState;->Error:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Playing:Lcom/tencent/tme/player/TMEPlayerState;

    :goto_0
    return-void
.end method
