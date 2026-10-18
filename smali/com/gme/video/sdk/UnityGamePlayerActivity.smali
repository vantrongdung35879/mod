.class public Lcom/gme/video/sdk/UnityGamePlayerActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "UnityGamePlayerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;->setActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    return-void
.end method
