.class Lcom/ihoc/mgpa/gradish/M0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/M0$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/M0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ihoc/mgpa/gradish/M0;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/M0;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/M0$m;->b:Lcom/ihoc/mgpa/gradish/M0;

    iput-wide p2, p0, Lcom/ihoc/mgpa/gradish/M0$m;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ihoc/mgpa/gradish/M0$m;->a:J

    sub-long/2addr v0, v2

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    .line 4
    const-string v2, "All task in %s thread has done, total run time: %d"

    invoke-static {v2, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/M0$m;->b:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/M0;->p(Lcom/ihoc/mgpa/gradish/M0;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "run_time"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$m;->b:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->p(Lcom/ihoc/mgpa/gradish/M0;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "result"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/M0$m;->b:Lcom/ihoc/mgpa/gradish/M0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M0;->p(Lcom/ihoc/mgpa/gradish/M0;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->e(Ljava/util/HashMap;)V

    return-void
.end method
