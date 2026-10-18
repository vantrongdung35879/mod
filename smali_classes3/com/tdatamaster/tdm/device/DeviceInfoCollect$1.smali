.class Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;
.super Ljava/lang/Object;
.source "DeviceInfoCollect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->GetUserAgent(Landroid/content/Context;)Lcom/tdatamaster/tdm/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;


# direct methods
.method constructor <init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;->this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 378
    const-string v0, "TDM"

    .line 0
    const-string v1, "get UA -> "

    .line 378
    :try_start_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-static {}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 379
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;->this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    new-instance v3, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v3, v2}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->access$102(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfo;)Lcom/tdatamaster/tdm/device/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get UA fail -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;->this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    const-string v2, "Unknown"

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->access$102(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfo;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    :cond_0
    :goto_0
    return-void
.end method
