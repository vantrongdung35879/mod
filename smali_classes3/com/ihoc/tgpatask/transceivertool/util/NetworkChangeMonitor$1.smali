.class Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->getNetworkChangeReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 100
    sget-object p2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onReceive:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string p2, "CONNECTIVITY_CHANGE"

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance p1, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1$1;

    invoke-direct {p1, p0}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;)V

    .line 118
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->getInstance()Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ihoc/tgpatask/transceivertool/util/ThreadPoolManager;->executeTaskBySingleExecutor(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
