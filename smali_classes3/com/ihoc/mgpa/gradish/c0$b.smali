.class public final Lcom/ihoc/mgpa/gradish/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/c0;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/c0;->a:Lcom/ihoc/mgpa/gradish/c0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/gradish/c0;->a(J)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/c0;->a(Z)V

    return-void
.end method

.method public onBecameForeground()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/c0;->a(Z)V

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/c0;->a:Lcom/ihoc/mgpa/gradish/c0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/c0;->b(Lcom/ihoc/mgpa/gradish/c0;)Z

    move-result v1

    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/c0;->b(Z)V

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/c0;->a(Lcom/ihoc/mgpa/gradish/c0;)I

    move-result v1

    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/c0;->a(I)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MediaRouter] fg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ihoc/mgpa/gradish/c0;->a()Landroid/media/MediaRouter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , isWirelessDisplaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/c0;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isWirelessDisplaying2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/c0;->d(Lcom/ihoc/mgpa/gradish/c0;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[MediaRouter] fg: getDualWifiState: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/c0;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , getDualWifiEnabledStateNormal: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/c0;->c(Lcom/ihoc/mgpa/gradish/c0;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
