.class public Lcom/gcore/gcloud/GCloudApplication;
.super Landroid/app/Application;
.source "GCloudApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 12
    invoke-static {p1}, Lcom/gcore/abase/hotfix/GCloudFix;->init(Landroid/content/Context;)V

    return-void
.end method
