.class public interface abstract Lcom/tencent/gcloud/msdk/core/game/GameInterface;
.super Ljava/lang/Object;
.source "GameInterface.java"


# virtual methods
.method public abstract setScore(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
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
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract setup(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract showAchievement(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract showLeaderBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "board",
            "seqID",
            "extra"
        }
    .end annotation
.end method

.method public abstract unlockAchieve(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
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
            "seqID",
            "extra"
        }
    .end annotation
.end method
