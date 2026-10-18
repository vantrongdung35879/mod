.class public Lcom/perfsight/apm/d/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/os/BatteryManager;

.field private static b:Landroid/os/PowerManager;


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    sget-object v0, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, "batterymanager"

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    sput-object p0, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;

    :cond_0
    sget-object p0, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 18

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const-string v1, "batterymanager"

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    sput-object v0, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;

    :cond_1
    sget-object v0, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    sget-object v2, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;

    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v11

    sget-object v2, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz p1, :cond_2

    sget-object v2, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;

    invoke-virtual {v2, v14}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    move/from16 v16, v2

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :goto_0
    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/perfsight/apm/apm/c;->c(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    sget-object v2, Lcom/perfsight/apm/d/a;->a:Landroid/os/BatteryManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/perfsight/apm/apm/c;->d(I)V

    move/from16 v17, v2

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    :goto_1
    const/4 v2, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v3, v17

    move v4, v0

    move v5, v11

    move v6, v13

    move/from16 v7, v16

    invoke-static/range {v2 .. v9}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postBatteryInfo(IIIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "battery info : %d %d %d %d %d"

    :try_start_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v15

    aput-object v0, v7, v14

    aput-object v4, v7, v12

    aput-object v5, v7, v10

    aput-object v6, v7, v1

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "PerfDataBattery Exception ocurred"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/perfsight/apm/d/a;->b:Landroid/os/PowerManager;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    const-string v1, "power"

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sput-object v1, Lcom/perfsight/apm/d/a;->b:Landroid/os/PowerManager;

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    sget-object v1, Lcom/perfsight/apm/d/a;->b:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "Huawei"

    :try_start_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x1

    if-nez v2, :cond_4

    const-string v2, "Honor"

    :try_start_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "Xiaomi"

    :try_start_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "POWER_SAVE_MODE_OPEN"

    :try_start_5
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v3, :cond_5

    goto :goto_2

    :cond_3
    :goto_0
    move v0, v1

    goto :goto_4

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "SmartModeStatus"

    :try_start_6
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_5

    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    :catch_0
    move-exception p0

    move v0, v1

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_3
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :cond_5
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Battery Mode : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    return v0
.end method
