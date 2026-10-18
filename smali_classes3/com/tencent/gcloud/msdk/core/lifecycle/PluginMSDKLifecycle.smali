.class public Lcom/tencent/gcloud/msdk/core/lifecycle/PluginMSDKLifecycle;
.super Ljava/lang/Object;
.source "PluginMSDKLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/core/lifecycle/PluginMSDKLifecycle$AccountObserver;,
        Lcom/tencent/gcloud/msdk/core/lifecycle/PluginMSDKLifecycle$LoginObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginMSDK"

.field private static final UNITY_PLAYER:Ljava/lang/String; = "com.unity3d.player.UnityPlayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatString(Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ret"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 89
    :try_start_0
    const-string p0, ""

    return-object p0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;->toJSONString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 71
    const-string v0, "PluginMSDK"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onCreate, activity="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PluginMSDK"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->setActivityCur(Landroid/app/Activity;)V

    .line 36
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->initialize(Landroid/app/Activity;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 81
    const-string v0, "PluginMSDK"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "strings",
            "ints"
        }
    .end annotation

    .line 76
    const-string v0, "PluginMSDK"

    const-string v1, "onRequestPermissionsResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
