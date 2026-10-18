.class Lcom/ihoc/mgpa/gradish/M0$y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/M0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "y"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/ihoc/mgpa/gradish/M0$x;

.field final synthetic c:Lcom/ihoc/mgpa/gradish/M0;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/M0$y;->c:Lcom/ihoc/mgpa/gradish/M0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/M0$y;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/ihoc/mgpa/gradish/M0$y;->b:Lcom/ihoc/mgpa/gradish/M0$x;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M0;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "start async init task: %s , in thread: %s."

    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/M0$y;->a:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v8, v10, v4

    aput-object v9, v10, v3

    .line 5
    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v5, p0, Lcom/ihoc/mgpa/gradish/M0$y;->b:Lcom/ihoc/mgpa/gradish/M0$x;

    if-eqz v5, :cond_0

    .line 8
    invoke-interface {v5}, Lcom/ihoc/mgpa/gradish/M0$x;->a()V

    .line 10
    :cond_0
    iget-object v5, p0, Lcom/ihoc/mgpa/gradish/M0$y;->c:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v5}, Lcom/ihoc/mgpa/gradish/M0;->p(Lcom/ihoc/mgpa/gradish/M0;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 11
    iget-object v5, p0, Lcom/ihoc/mgpa/gradish/M0$y;->c:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v5}, Lcom/ihoc/mgpa/gradish/M0;->p(Lcom/ihoc/mgpa/gradish/M0;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/ihoc/mgpa/gradish/M0$y;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 14
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    iget-object v6, p0, Lcom/ihoc/mgpa/gradish/M0$y;->a:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/ihoc/mgpa/gradish/t1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object v5, p0, Lcom/ihoc/mgpa/gradish/M0$y;->c:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v5}, Lcom/ihoc/mgpa/gradish/M0;->p(Lcom/ihoc/mgpa/gradish/M0;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 17
    iget-object v5, p0, Lcom/ihoc/mgpa/gradish/M0$y;->c:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v5}, Lcom/ihoc/mgpa/gradish/M0;->p(Lcom/ihoc/mgpa/gradish/M0;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/ihoc/mgpa/gradish/M0$y;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-1"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ihoc/mgpa/gradish/M0$y;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " code run exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M0;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v7, p0, Lcom/ihoc/mgpa/gradish/M0$y;->a:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v4

    aput-object v8, v1, v3

    aput-object v0, v1, v2

    .line 23
    const-string v0, "end init task: %s , in thread: %s , run time: %d ."

    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
