.class public Lcom/activegames/engine/util/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/activegames/engine/util/BatteryReceiver;->onReceiveNative(Landroid/content/Context;Landroid/content/Intent;)V

    .line 13
    return-void
.end method

.method public native onReceiveNative(Landroid/content/Context;Landroid/content/Intent;)V
.end method
