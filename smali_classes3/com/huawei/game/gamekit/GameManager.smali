.class public abstract Lcom/huawei/game/gamekit/GameManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/game/gamekit/GameManager$GameCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameManager()Lcom/huawei/game/gamekit/GameManager;
    .locals 1

    invoke-static {}, Lcom/huawei/game/gamekit/b;->a()Lcom/huawei/game/gamekit/GameManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getPhoneInfo()Ljava/lang/String;
.end method

.method public abstract registerGame(Ljava/lang/String;Lcom/huawei/game/gamekit/GameManager$GameCallBack;)Z
.end method

.method public abstract registerGame(Ljava/lang/String;Lcom/huawei/game/gamekit/GameManager$GameCallBack;Landroid/content/Context;)Z
.end method

.method public abstract updateGameAppInfo(Ljava/lang/String;)V
.end method
