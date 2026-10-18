.class Lcom/tencent/mna/h$c;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->a(JJLjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/j;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J


# direct methods
.method constructor <init>(Lcom/tencent/mna/j;JJLjava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/h$c;->a:Lcom/tencent/mna/j;

    iput-wide p2, p0, Lcom/tencent/mna/h$c;->b:J

    iput-wide p4, p0, Lcom/tencent/mna/h$c;->c:J

    iput-object p6, p0, Lcom/tencent/mna/h$c;->d:Ljava/lang/String;

    iput-wide p7, p0, Lcom/tencent/mna/h$c;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/h$c;->a:Lcom/tencent/mna/j;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/tencent/mna/h$c;->b:J

    iget-wide v3, p0, Lcom/tencent/mna/h$c;->c:J

    iget-object v5, p0, Lcom/tencent/mna/h$c;->d:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/mna/h$c;->e:J

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mna/j;->a(JJLjava/lang/String;J)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "PreciseKartinQuery failed, not start speed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PreciseKartinQuery exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
