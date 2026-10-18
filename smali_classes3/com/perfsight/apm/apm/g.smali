.class Lcom/perfsight/apm/apm/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/apm/j;->a(Ljava/lang/String;Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/apm/j;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/apm/j;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/apm/g;->a:Lcom/perfsight/apm/apm/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "apm_startup"

    const-string v5, "NA"

    :try_start_1
    iget-object v2, p0, Lcom/perfsight/apm/apm/g;->a:Lcom/perfsight/apm/apm/j;

    invoke-static {v2}, Lcom/perfsight/apm/apm/j;->a(Lcom/perfsight/apm/apm/j;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/apm/p;->b(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v10

    iget-object v0, p0, Lcom/perfsight/apm/apm/g;->a:Lcom/perfsight/apm/apm/j;

    invoke-static {v0}, Lcom/perfsight/apm/apm/j;->b(Lcom/perfsight/apm/apm/j;)Lcom/perfsight/apm/portal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/portal/a;->c()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/perfsight/apm/apm/g;->a:Lcom/perfsight/apm/apm/j;

    invoke-static {v0}, Lcom/perfsight/apm/apm/j;->c(Lcom/perfsight/apm/apm/j;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, p0, Lcom/perfsight/apm/apm/g;->a:Lcom/perfsight/apm/apm/j;

    invoke-static {v0}, Lcom/perfsight/apm/apm/j;->d(Lcom/perfsight/apm/apm/j;)Lcom/perfsight/apm/portal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/portal/a;->d()Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "NA"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-static/range {v1 .. v14}, Lcom/perfsight/apm/jni/TApmNativeHelper;->packetAndSendByTDM(Ljava/lang/String;IIILjava/lang/String;IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendbootMsg error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
