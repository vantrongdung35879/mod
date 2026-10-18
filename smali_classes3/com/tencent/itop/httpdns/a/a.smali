.class public final Lcom/tencent/itop/httpdns/a/a;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Network change."

    invoke-static {p2, p1}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    sget-boolean p1, Lcom/tencent/itop/httpdns/a/e;->a:Z

    if-nez p1, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/tencent/itop/httpdns/a/d;->a()V

    return-void
.end method
