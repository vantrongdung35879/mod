.class public Lcom/tencent/gcloud/msdk/api/game/MSDKGame;
.super Ljava/lang/Object;
.source "MSDKGame.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native setGameObserver(Lcom/tencent/gcloud/msdk/api/game/MSDKGameObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public static native setScore(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "board",
            "score",
            "channel",
            "extraJson"
        }
    .end annotation
.end method

.method public static native setup(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channel",
            "extraJson"
        }
    .end annotation
.end method

.method public static native showAchievement(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channel",
            "extraJson"
        }
    .end annotation
.end method

.method public static native showLeaderBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "board",
            "channel",
            "extraJson"
        }
    .end annotation
.end method

.method public static native unlockAchievement(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "achieve",
            "count",
            "channel",
            "extraJson"
        }
    .end annotation
.end method
