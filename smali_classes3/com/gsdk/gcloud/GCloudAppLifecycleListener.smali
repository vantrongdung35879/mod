.class public Lcom/gsdk/gcloud/GCloudAppLifecycleListener;
.super Ljava/lang/Object;
.source "GCloudAppLifecycleListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LifecycleListener"


# instance fields
.field private bEnableRequestPermission:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/gsdk/gcloud/GCloudAppLifecycleListener;->bEnableRequestPermission:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 87
    const-string v0, "LifecycleListener"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsdk/gcloud/GCloud;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 36
    const-string p2, "LifecycleListener"

    const-string v0, "onCreate args 2"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object p2, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsdk/gcloud/GCloud;->initialize(Landroid/content/Context;)Z

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    .line 44
    const-string v0, "LifecycleListener"

    const-string v1, "onCreate args 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v0, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    invoke-virtual {v0, p1}, Lcom/gsdk/gcloud/GCloud;->initialize(Landroid/content/Context;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    const-string p1, "LifecycleListener"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 76
    const-string v0, "LifecycleListener"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    invoke-virtual {v0}, Lcom/gsdk/gcloud/GCloud;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 61
    const-string v0, "LifecycleListener"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    invoke-virtual {v0, p1}, Lcom/gsdk/gcloud/GCloud;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 66
    const-string v0, "LifecycleListener"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    invoke-virtual {v0}, Lcom/gsdk/gcloud/GCloud;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onRequestPermissionsResult: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LifecycleListener"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 82
    const-string v0, "LifecycleListener"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    invoke-virtual {v0}, Lcom/gsdk/gcloud/GCloud;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 71
    const-string v0, "LifecycleListener"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    invoke-virtual {v0}, Lcom/gsdk/gcloud/GCloud;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 52
    const-string v0, "LifecycleListener"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 57
    const-string v0, "LifecycleListener"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEnableRequestPermission(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/gsdk/gcloud/GCloudAppLifecycleListener;->bEnableRequestPermission:Z

    return-void
.end method
