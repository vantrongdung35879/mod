.class public Landroidx/multidex/MultiDexApplication;
.super Lcom/ano/gshell/AnoApplication;
.source "MultiDexApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/ano/gshell/AnoApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/ano/gshell/AnoApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 39
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method
