.class Lcom/tencent/mna/h$i;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/mna/h$i;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->LOADMAPTIME:Lcom/tencent/mna/base/report/a$a;

    iget-wide v2, p0, Lcom/tencent/mna/h$i;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/tencent/mna/w0$a;

    invoke-direct {v0}, Lcom/tencent/mna/w0$a;-><init>()V

    .line 4
    invoke-static {}, Lcom/tencent/mna/d;->R()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/w0;->a(Landroid/content/Context;)Lcom/tencent/mna/w0$a;

    move-result-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->FIRST_HWR_MARKER:Lcom/tencent/mna/base/report/a$a;

    iget v3, v0, Lcom/tencent/mna/w0$a;->a:I

    .line 9
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v1, v2, v3}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->FIRST_HWR_INFO:Lcom/tencent/mna/base/report/a$a;

    .line 13
    invoke-virtual {v0}, Lcom/tencent/mna/w0$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v1, v2, v3}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 18
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v1

    iget v2, v0, Lcom/tencent/mna/w0$a;->a:I

    invoke-virtual {v1, v2}, Lcom/tencent/mna/j;->d(I)V

    .line 22
    :cond_1
    invoke-static {}, Lcom/tencent/mna/d;->S()I

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    iget v0, v0, Lcom/tencent/mna/w0$a;->a:I

    const-string v2, "start"

    invoke-static {v1, v0, v2}, Lcom/tencent/mna/w0;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const v0, -0xbdb29

    .line 27
    :goto_0
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->HWR_LOGS:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    return-void
.end method
