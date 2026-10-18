.class public Lcom/tencent/mna/MNAPlatformImpl;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MNAAddData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MNAAddData called fps:\'"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', move:\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', click:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string p0, "MNAAddData succeed"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "MNAAddData fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNACollectTouchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MNACollectTouchData fail, isMatch:"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/tencent/mna/t0;->y:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p2}, Lcom/tencent/mna/n;->e(Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/mna/v2;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p1, Lcom/tencent/mna/t0;->y:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAEndSpeed(Ljava/lang/String;I)V
    .locals 1

    .line 11
    :try_start_0
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/tencent/mna/MNAPlatformImpl;->MNAEndSpeed(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAEndSpeed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const-string v0, "MNAEndSpeed called domain:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",vport:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",extrainfo:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sput-object p2, Lcom/tencent/mna/t0;->e:Ljava/lang/String;

    .line 8
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "MNAEndSpeed fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAEnterMapLoading()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "MNAEnterMapLoading called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/tencent/mna/h;->m()V

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "MNAEnterMapLoading fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAGetAuxWifiSupportFlag()I
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "MNAGetAuxWifiSupportFlag called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/vendor/h;->a(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MNAGetAuxWifiSupportFlag return:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return v0
.end method

.method public static MNAGetBatteryLevel()I
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "MNAGetBatteryLevel called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/e;->g(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static MNAGetBatteryLevelAndCharging()[I
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 3
    :try_start_0
    const-string v1, "MNAGetBatteryLevelAndCharging called"

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/e;->h(Landroid/content/Context;)[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static MNAGetCollectControlInt(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "MNAGetCollectControlInt called, key:"

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/d;->a(Ljava/lang/String;I)I

    move-result v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", default:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    return p1
.end method

.method public static MNAGetIpGroupDelays(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/h;->a(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GetIpGroupDelays exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static MNAGetNetworkType()I
    .locals 3

    .line 1
    const-string v0, "MNAGetNetworkType :"

    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    const/4 v0, -0x1

    return v0
.end method

.method public static MNAGetQosSid()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "MNAGetQosSid return:"

    :try_start_0
    const-string v1, "MNAGetQosSid called"

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/tencent/mna/m2;->p:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 8
    :catchall_0
    const-string v0, "-1"

    return-object v0
.end method

.method public static MNAGetSOVersion()I
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "MNAGetSOVersion called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->c()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static MNAGetSpeedFlag()I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/h;->r()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/16 v0, -0x64

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MNAGetSpeedInfo return:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return v0
.end method

.method public static MNAGetSpeedInfo(Ljava/lang/String;I)Lcom/tencent/mna/j3;
    .locals 2

    const-string v0, "MNAGetSpeedInfo called vip:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",vport:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->c(Ljava/lang/String;I)Lcom/tencent/mna/j3;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MNAGetSpeedInfo return:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public static MNAGoBack()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/h;->s()V

    .line 3
    const-string v0, "MNAGoBack succeed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "MNAGoBack fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAGoFront()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/h;->t()V

    .line 3
    const-string v0, "MNAGoFront succeed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "MNAGoFront fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZILjava/lang/String;)V
    .locals 12

    const-string v0, " | "

    const-string v1, "init: v6.3.36 | 5399b8cb | "

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/tencent/mna/v1;->a(I)V

    .line 3
    const-string v2, "TClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p6

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v4 .. v11}, Lcom/tencent/mna/b2;->a(Landroid/content/Context;Ljava/lang/String;ZIZZILjava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "MNAInit succeed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "MNAInit fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MNAInit fail, exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static MNAIsQOSWork()I
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "MNAIsQOSWork called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lcom/tencent/mna/m2;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MNAIsQOSWork return:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return v0
.end method

.method public static MNAIsVPNOpen()Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "MNAIsVPNOpen called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mna/h;->y()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static MNAPauseBattle()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "MNAPauseBattle called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/tencent/mna/h;->z()V

    .line 5
    const-string v0, "MNAPauseBattle succeed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "MNAPauseBattle fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAQueryKartin(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MNAQueryKartin called tag:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/tencent/mna/core/diagnose/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "MNAQueryKartin fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAQueryNetwork(ZZZ)V
    .locals 7

    const-string v0, "MNAQueryNetwork called isGetNetcardInfo:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isGetRouterDelay:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isGetEdgeDelay:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/tencent/mna/b2;->i()Lcom/tencent/mna/NetworkObserver;

    move-result-object v6

    .line 8
    new-instance v0, Lcom/tencent/mna/MNAPlatformImpl$a;

    move-object v1, v0

    move v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mna/MNAPlatformImpl$a;-><init>(Landroid/content/Context;ZZZLcom/tencent/mna/NetworkObserver;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 61
    :cond_0
    const-string p0, "MNAQueryNetwork failed, not init"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAQueryPreciseKartin(JJLjava/lang/String;)V
    .locals 8

    const-string v0, "MNAQueryPreciseKartin called, curServerTime:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", pvpDurationTime:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", triggerDelay:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 7
    invoke-static/range {v1 .. v7}, Lcom/tencent/mna/h;->a(JJLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static MNAQueryRouter(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MNAQueryRouter called tag:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/tencent/mna/b2;->j()Lcom/tencent/mna/RouterObserver;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/tencent/mna/MNAPlatformImpl$b;

    invoke-direct {v2, v0, p0, v1}, Lcom/tencent/mna/MNAPlatformImpl$b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mna/RouterObserver;)V

    invoke-static {v2}, Lcom/tencent/mna/a2;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 40
    :cond_0
    const-string p0, "MNAQueryNetwork failed, not init"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAQuit()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "MNAQuit called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/tencent/mna/b2;->c(Z)V

    .line 6
    const-string v0, ""

    const/16 v1, 0x6b

    invoke-static {v1, v0}, Lcom/tencent/mna/t3;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "MNAQuit fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAResumeBattle()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "MNAResumeBattle called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/tencent/mna/h;->B()V

    .line 5
    const-string v0, "MNAResumeBattle succeed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "MNAResumeBattle fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNASetAuxWifiUserAllow(Z)V
    .locals 2

    const-string v0, "MNASetAuxWifiUserAllow called, isEnable:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 2
    sput-boolean p0, Lcom/tencent/mna/t0;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetControlDomain(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "MNASetControlDomain called controlDomain:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", port:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    sput-object p0, Lcom/tencent/mna/w;->h:Ljava/lang/String;

    .line 4
    sput p1, Lcom/tencent/mna/w;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetDualTunnelBindNetType(IZ)V
    .locals 2

    const-string v0, "MNASetDualTunnelBindNetType called, bindNetType:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", useSaveFlow:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 3
    sput p0, Lcom/tencent/mna/t0;->h:I

    .line 4
    sput-boolean p1, Lcom/tencent/mna/t0;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetForceSpeed(Z)V
    .locals 2

    const-string v0, "MNASetForceSpeed called isForceSpeed:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 4
    sput-boolean p0, Lcom/tencent/mna/t0;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetGHObserver(Lcom/tencent/mna/GHObserver;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "MNASetGHObserver called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/mna/b2;->a(Lcom/tencent/mna/GHObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetGameDelay(I)V
    .locals 2

    const-string v0, "MNASetGameDelay fail, isMatch:"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/tencent/mna/t0;->y:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/tencent/mna/h2;->c(I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/mna/t0;->y:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNASetGameIp(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MNASetGameIp called gameIp:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/tencent/mna/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "MNASetGameIp fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNASetGameIp(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "MNASetGameIp with port called gameIp:"

    .line 7
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", port:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->e(Ljava/lang/String;I)V

    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "MNASetGameIp with port fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNASetGameIpWithLocalIp(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    const-string v0, "MNASetGameIpWithLocalIp with port called gameIp:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", port:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", localIp:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", localPort:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/h;->a(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "MNASetGameIpWithLocalIp fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNASetGameMode(Z)V
    .locals 2

    const-string v0, "MNASetGameMode called isMatch:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/tencent/mna/h;->e(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetIpGroupDelaysObserver(Lcom/tencent/mna/m1;)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    const-string v0, "MNASetRouterObserver called: null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "MNASetRouterObserver called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/tencent/mna/b2;->a(Lcom/tencent/mna/m1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetNetworkBindingListener(Lcom/tencent/mna/NetworkBindingListener;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "MNASetNetworkBindingListener called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/mna/b2;->a(Lcom/tencent/mna/NetworkBindingListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetNetworkObserver(Lcom/tencent/mna/NetworkObserver;)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    const-string v0, "MNASetNetworkObserver called: null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "MNASetNetworkObserver called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/tencent/mna/b2;->a(Lcom/tencent/mna/NetworkObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetObserver(JJ)V
    .locals 2

    const-string v0, "MNASetObserver called startSpeedPtr:"

    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",kartinPtr:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/b2;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetObserver(Lcom/tencent/mna/MNAObserver;)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    const-string v0, "MNASetObserver called: null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "MNASetObserver called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/tencent/mna/b2;->a(Lcom/tencent/mna/MNAObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetOverseaGame(Z)V
    .locals 2

    const-string v0, "MNASetOverseaGame called isOversea:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 3
    sput-boolean p0, Lcom/tencent/mna/w;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetReportChannel(I)V
    .locals 2

    const-string v0, "MNASetReportChannel called reportChannel:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/tencent/mna/t0;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetRouterObserver(Lcom/tencent/mna/RouterObserver;)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    const-string v0, "MNASetRouterObserver called: null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "MNASetRouterObserver called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/tencent/mna/b2;->a(Lcom/tencent/mna/RouterObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetUserName(ILjava/lang/String;)V
    .locals 4

    const-string v0, "base: "

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, "null"

    .line 3
    :cond_0
    const-string v1, "TClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UTF-8"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "key"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sput-object p1, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 10
    sput p0, Lcom/tencent/mna/t0;->v:I

    .line 11
    invoke-static {p1}, Lcom/tencent/mna/m2;->c(Ljava/lang/String;)V

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/base/utils/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x6c

    .line 15
    invoke-static {p1, p0}, Lcom/tencent/mna/t3;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetUserName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, ":"

    const-string v1, "base:u "

    if-nez p1, :cond_0

    .line 16
    :try_start_0
    const-string p1, "null"

    .line 18
    :cond_0
    const-string v2, "TClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UTF-8"

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "key"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sput-object p1, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 25
    sput p0, Lcom/tencent/mna/t0;->v:I

    .line 26
    sput-object p2, Lcom/tencent/mna/t0;->w:Ljava/lang/String;

    .line 27
    sput-object p3, Lcom/tencent/mna/t0;->x:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/tencent/mna/m2;->c(Ljava/lang/String;)V

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/base/utils/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x6d

    .line 33
    invoke-static {p1, p0}, Lcom/tencent/mna/t3;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNASetZoneId(I)V
    .locals 2

    const-string v0, "MNASetZoneId called zoneid:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 4
    sput p0, Lcom/tencent/mna/t0;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static MNAStartSpeed(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 2

    const-string v0, "MNAStartSpeed called domain:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",vport:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",htype:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",hookModules:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",zoneid:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",stopMNA:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",start_timeout:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",pvpid:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static/range {p0 .. p7}, Lcom/tencent/mna/h;->a(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "MNAStartSpeed fail, not init"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAStartWifiActivity(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 3

    const-string v0, "MNAStartWifiActivity called activity:"

    const/4 v1, -0x2

    .line 10
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",tag:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p0}, Lcom/tencent/mna/o3;->a(Landroid/app/Activity;)I

    move-result v1

    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "MNAStartWifiActivity(Activity;String) fail, not init"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 19
    :goto_0
    invoke-static {p1, v1}, Lcom/tencent/mna/MNAPlatformImpl;->reportWifiEvent(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1
.end method

.method public static MNAStartWifiActivity(Ljava/lang/String;)I
    .locals 3

    const-string v0, "MNAStartWifiActivity called tag:"

    const/4 v1, -0x2

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/tencent/mna/o3;->b()I

    move-result v1

    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "MNAStartWifiActivity fail, not init"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-static {p0, v1}, Lcom/tencent/mna/MNAPlatformImpl;->reportWifiEvent(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1
.end method

.method public static MNAStopMNA(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "MNAStopMNA called domain:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",vport:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->f(Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "MNAStopMNA fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static MNAToggleNetworkBinding(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MNAToggleNetworkBinding called bufferScore:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",playerSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->b(IZ)V

    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "MNAToggleNetworkBinding fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static MNATransportInfo(ILjava/lang/String;)V
    .locals 2

    const-string v0, "MNATransportInfo called msgType:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0, p1}, Lcom/tencent/mna/t3;->a(ILjava/lang/String;)V

    .line 7
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "MNAQuit fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static SetBandwidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SetBandwidth called bandwidthValuesStr:"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",totalSize:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",elapseTime:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",maxBandValue:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static reportWifiEvent(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/mna/MNAPlatformImpl$c;

    invoke-direct {v0, p1, p0}, Lcom/tencent/mna/MNAPlatformImpl$c;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    return-void
.end method
