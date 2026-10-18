.class Lcom/tencent/qmsp/sdk/c/k$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/sdk/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:Lcom/tencent/qmsp/sdk/c/k$i;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/sdk/c/k$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$h;->a:Lcom/tencent/qmsp/sdk/c/k$i;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "QSecSFUReader read, bid = %d "

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qp.QLM"

    invoke-static {v2, v1, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/tencent/qmsp/sdk/d/b;

    invoke-direct {v0}, Lcom/tencent/qmsp/sdk/d/b;-><init>()V

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/tencent/qmsp/sdk/d/b;->a(J)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    const-string v4, "QSecSFUReader read updateSections count = %d "

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qmsp/sdk/d/d$b;

    iget-wide v5, v4, Lcom/tencent/qmsp/sdk/d/d$b;->b:J

    int-to-long v7, p1

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    iget-object v5, v4, Lcom/tencent/qmsp/sdk/d/d$b;->o:Ljava/util/List;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v4, Lcom/tencent/qmsp/sdk/d/d$b;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qmsp/sdk/d/d$a;

    iget-object v6, v5, Lcom/tencent/qmsp/sdk/d/d$a;->i:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v5, Lcom/tencent/qmsp/sdk/d/d$a;->f:Ljava/lang/String;

    iget-object v7, v5, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v6, v5, Lcom/tencent/qmsp/sdk/d/d$a;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v6, :cond_2

    const-string v7, "ExtraInfo: %s path: %s"

    :try_start_2
    iget-object v8, v5, Lcom/tencent/qmsp/sdk/d/d$a;->i:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v8, v10, v3

    aput-object v6, v10, v1

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v1, v7}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lorg/json/JSONObject;

    iget-object v5, v5, Lcom/tencent/qmsp/sdk/d/d$a;->i:Ljava/lang/String;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/qmsp/sdk/c/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/c/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9}, Lcom/tencent/qmsp/sdk/c/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/tencent/qmsp/sdk/c/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/tencent/qmsp/sdk/c/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/tencent/qmsp/sdk/c/k$h;->a:Lcom/tencent/qmsp/sdk/c/k$i;

    if-eqz v5, :cond_2

    move v9, v10

    move v10, v11

    move v11, v12

    invoke-virtual/range {v5 .. v11}, Lcom/tencent/qmsp/sdk/c/k$i;->a(Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$h;->a:Lcom/tencent/qmsp/sdk/c/k$i;

    if-eqz p1, :cond_6

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$h;->a:Lcom/tencent/qmsp/sdk/c/k$i;

    if-eqz p1, :cond_6

    :goto_2
    invoke-virtual {p1}, Lcom/tencent/qmsp/sdk/c/k$i;->a()V

    :cond_6
    return-void

    :goto_3
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$h;->a:Lcom/tencent/qmsp/sdk/c/k$i;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/c/k$i;->a()V

    :cond_7
    throw p1
.end method
