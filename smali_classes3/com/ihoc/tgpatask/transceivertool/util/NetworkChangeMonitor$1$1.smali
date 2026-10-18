.class Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1$1;
.super Ljava/lang/Object;
.source "NetworkChangeMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    iget-object v4, v4, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    .line 107
    const-string v4, "%d %s"

    invoke-static {v2, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ihoc/tgpatask/TransceiverManager;->refreshNetworkInfo()V

    .line 111
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v4

    iget-object v4, v4, Lcom/ihoc/tgpatask/TransceiverManager;->netaccesstype:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v4, v5, v3

    .line 110
    const-string v2, "%s %s;"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_0

    .line 113
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    iget-object v3, v3, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;->eventList:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
