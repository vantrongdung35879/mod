.class Lcom/centauri/api/UnityPayHelper$9;
.super Ljava/lang/Object;
.source "UnityPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->Pay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bizType:Ljava/lang/String;

.field final synthetic val$req:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/centauri/api/UnityPayHelper$9;->val$bizType:Ljava/lang/String;

    iput-object p2, p0, Lcom/centauri/api/UnityPayHelper$9;->val$req:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialize Current Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPayHelper"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/centauri/api/UnityPayHelper$9;->val$bizType:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/api/UnityPayHelper$9;->val$req:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/centauri/api/UnityPayHelper;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
