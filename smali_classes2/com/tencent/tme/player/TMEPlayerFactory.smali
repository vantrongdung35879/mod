.class public Lcom/tencent/tme/player/TMEPlayerFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayer()Lcom/tencent/tme/player/TMEPlayer;
    .locals 1

    new-instance v0, Lcom/tencent/tme/player/control/IEGGPlayer;

    invoke-direct {v0}, Lcom/tencent/tme/player/control/IEGGPlayer;-><init>()V

    return-object v0
.end method

.method public static getVideoSDK()Lcom/tencent/tme/player/TMEVideoSDK;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
