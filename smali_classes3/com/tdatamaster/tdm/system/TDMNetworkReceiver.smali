.class public Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TDMNetworkReceiver.java"


# instance fields
.field private LastNet:Lcom/tdatamaster/tdm/system/NetworkType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    sget-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tdatamaster/tdm/system/NetworkType;

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;->LastNet:Lcom/tdatamaster/tdm/system/NetworkType;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetNetworkType(Landroid/content/Context;)Lcom/tdatamaster/tdm/system/NetworkType;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;->LastNet:Lcom/tdatamaster/tdm/system/NetworkType;

    if-eq p1, p2, :cond_0

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onReceive netType "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TDM"

    invoke-static {v0, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;->LastNet:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 26
    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tdatamaster/tdm/system/NetworkType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/tdatamaster/tdm/system/TDMUtils;->OnNetworkChanged(IZ)V

    :cond_0
    return-void
.end method
