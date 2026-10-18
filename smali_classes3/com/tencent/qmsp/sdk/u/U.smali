.class public Lcom/tencent/qmsp/sdk/u/U;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BEACON_ID_VERSION:Ljava/lang/String; = "4.1"

.field public static final COMMIT_HASH:Ljava/lang/String; = "06ed66c56e7d76a4e9ed0417c8b83ca9a1f59d06"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "qmp"

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/tencent/qmsp/sdk/u/U;->load_so()Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a(Landroid/content/Context;ILandroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native c(I)[Ljava/lang/String;
.end method

.method private static getP()Ljava/lang/String;
    .locals 3

    const-string v0, "com.tencent.beacon.event.open.BeaconReport"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "getSoPath"

    :try_start_1
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static getSDKIsAlive()Z
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getSDKIsAlive()Z

    move-result v0

    return v0
.end method

.method private static load_so()Z
    .locals 3

    invoke-static {}, Lcom/tencent/qmsp/sdk/u/U;->getP()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->setmUid(Ljava/lang/String;)V

    return-void
.end method

.method public static startQ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    invoke-static {p5}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->setLogcat(Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->startQmsp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static stopQ()V
    .locals 0

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->stopQmsp()V

    return-void
.end method
