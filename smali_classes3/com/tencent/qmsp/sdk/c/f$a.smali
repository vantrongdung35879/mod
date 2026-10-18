.class Lcom/tencent/qmsp/sdk/c/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/qmsp/sdk/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/sdk/c/f;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tencent/qmsp/sdk/c/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "Something wrong when load native so."

    const-string v2, "Qp.QFW"

    invoke-static {v2, v0, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/c/f;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/c/f;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
