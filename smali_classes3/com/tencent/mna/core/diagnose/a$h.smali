.class Lcom/tencent/mna/core/diagnose/a$h;
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
    name = "h"
.end annotation


# instance fields
.field a:Lcom/tencent/mna/base/utils/WifiUtil$b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mna/core/diagnose/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/mna/core/diagnose/a$h;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/tencent/mna/base/utils/WifiUtil$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$h;->a:Lcom/tencent/mna/base/utils/WifiUtil$b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/mna/base/utils/WifiUtil$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/tencent/mna/base/utils/WifiUtil$b;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 6

    const-string v0, "GetRouterInfoTask elapse:"

    const-string v1, "diagnose, getRouterInfo exception:"

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "mna-get-router-info-task"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-static {}, Lcom/tencent/mna/c0;->c()I

    move-result v4

    sget-object v5, Lcom/tencent/mna/core/diagnose/c$a;->RouterMacs:Lcom/tencent/mna/core/diagnose/c$a;

    invoke-static {v4, v5}, Lcom/tencent/mna/core/diagnose/c;->a(ILcom/tencent/mna/core/diagnose/c$a;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    const-string v0, "diagnose, RouterMacs switch off"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/c0;->E()I

    move-result v5

    invoke-static {v4, v5}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/content/Context;I)Lcom/tencent/mna/base/utils/WifiUtil$b;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mna/core/diagnose/a$h;->a:Lcom/tencent/mna/base/utils/WifiUtil$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 12
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$h;->a:Lcom/tencent/mna/base/utils/WifiUtil$b;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetRouterInfoTask run exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
