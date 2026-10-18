.class public Lcom/tencent/tme/live/t1/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public transient c:Lcom/tencent/tme/live/t1/a;

.field public transient d:Ljava/lang/Object;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/t1/c;Lcom/tencent/tme/live/t1/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/tme/live/t1/d;->a:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/tencent/tme/live/t1/c;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/t1/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tme/live/t1/d;->c:Lcom/tencent/tme/live/t1/a;

    iput-object p5, p0, Lcom/tencent/tme/live/t1/d;->d:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/tme/live/t1/d;->g:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/t1/d;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/t1/d;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tencent/tme/live/t1/d;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/t1/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/t1/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/t1/d;->b:Ljava/lang/String;

    return-object v0
.end method
