.class Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;
.super Ljava/lang/Object;
.source "CTINetDetectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 63
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wait time"

    invoke-static {v3, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 68
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1$1;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1$1;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;)V

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->detectTaskQuery(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
