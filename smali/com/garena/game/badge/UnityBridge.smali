.class public Lcom/garena/game/badge/UnityBridge;
.super Ljava/lang/Object;
.source "UnityBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static channelInfo()Ljava/lang/String;
    .locals 2

    .line 11
    invoke-static {}, Lcom/garena/game/badge/BadgeController;->getInstance()Lcom/garena/game/badge/BadgeController;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/garena/game/badge/BadgeController;->getChannelInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBadge(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/garena/game/badge/BadgeController;->getInstance()Lcom/garena/game/badge/BadgeController;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/garena/game/badge/BadgeController;->setBadge(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
