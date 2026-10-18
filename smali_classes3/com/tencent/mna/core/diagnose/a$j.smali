.class Lcom/tencent/mna/core/diagnose/a$j;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/core/diagnose/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0xa

    .line 3
    iput v0, p0, Lcom/tencent/mna/core/diagnose/a$j;->a:I

    .line 4
    iput v0, p0, Lcom/tencent/mna/core/diagnose/a$j;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mna/core/diagnose/a$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tencent/mna/core/diagnose/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "PingGateWayTask elapse:"

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "mna-ping-gateway-task"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-static {}, Lcom/tencent/mna/c0;->c()I

    move-result v3

    sget-object v4, Lcom/tencent/mna/core/diagnose/c$a;->Ping:Lcom/tencent/mna/core/diagnose/c$a;

    invoke-static {v3, v4}, Lcom/tencent/mna/core/diagnose/c;->a(ILcom/tencent/mna/core/diagnose/c$a;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    const-string v0, "diagnose, Ping switch off"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    .line 10
    invoke-static {}, Lcom/tencent/mna/c0;->p()I

    move-result v4

    .line 11
    invoke-static {v3, v4}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mna/core/diagnose/a$j;->a:I

    .line 14
    invoke-static {}, Lcom/tencent/mna/c0;->M()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 15
    invoke-static {}, Lcom/tencent/mna/c0;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mna/c0;->p()I

    move-result v4

    invoke-static {v3, v4}, Lcom/tencent/mna/i2;->c(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mna/core/diagnose/a$j;->b:I

    .line 17
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", gateway:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/mna/core/diagnose/a$j;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", next:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/mna/core/diagnose/a$j;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PingGateWayTask run exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
