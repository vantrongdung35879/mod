.class public Lcom/garena/game/badge/channel/SamsungBadgeChannel;
.super Lcom/garena/game/badge/BadgeChannel;
.source "SamsungBadgeChannel.java"


# instance fields
.field private defaultBadgeChannel:Lcom/garena/game/badge/BadgeChannel;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/garena/game/badge/BadgeChannel;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method

.method private initDefaultChannel()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/garena/game/badge/channel/SamsungBadgeChannel;->defaultBadgeChannel:Lcom/garena/game/badge/BadgeChannel;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/garena/game/badge/channel/DefaultBadgeChannel;

    iget-object v1, p0, Lcom/garena/game/badge/channel/SamsungBadgeChannel;->componentName:Landroid/content/ComponentName;

    invoke-direct {v0, v1}, Lcom/garena/game/badge/channel/DefaultBadgeChannel;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/garena/game/badge/channel/SamsungBadgeChannel;->defaultBadgeChannel:Lcom/garena/game/badge/BadgeChannel;

    :cond_0
    return-void
.end method


# virtual methods
.method public changeBadge(Landroid/content/Context;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/garena/game/badge/channel/SamsungBadgeChannel;->initDefaultChannel()V

    .line 28
    iget-object v0, p0, Lcom/garena/game/badge/channel/SamsungBadgeChannel;->defaultBadgeChannel:Lcom/garena/game/badge/BadgeChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/garena/game/badge/BadgeChannel;->isSupportBadge(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/garena/game/badge/channel/SamsungBadgeChannel;->defaultBadgeChannel:Lcom/garena/game/badge/BadgeChannel;

    invoke-virtual {v0, p1, p2}, Lcom/garena/game/badge/BadgeChannel;->changeBadge(Landroid/content/Context;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "samsung"

    return-object v0
.end method

.method public getLauncherPackageName()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    const-string v0, "com.sec.android.app.launcher"

    const-string v1, "com.sec.android.app.twlauncher"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSupportBadge(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/garena/game/badge/channel/SamsungBadgeChannel;->initDefaultChannel()V

    .line 45
    invoke-super {p0, p1}, Lcom/garena/game/badge/BadgeChannel;->isSupportBadge(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/garena/game/badge/channel/SamsungBadgeChannel;->defaultBadgeChannel:Lcom/garena/game/badge/BadgeChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/garena/game/badge/BadgeChannel;->isSupportBadge(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
