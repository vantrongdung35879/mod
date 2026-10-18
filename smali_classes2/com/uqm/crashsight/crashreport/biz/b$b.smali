.class final Lcom/uqm/crashsight/crashreport/biz/b$b;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/biz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/biz/b;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/biz/b;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/b$b;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 435
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/b$b;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-static {v2}, Lcom/uqm/crashsight/crashreport/biz/b;->b(Lcom/uqm/crashsight/crashreport/biz/b;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 437
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v2

    new-instance v3, Lcom/uqm/crashsight/crashreport/biz/b$b;

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/biz/b$b;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-direct {v3, v4}, Lcom/uqm/crashsight/crashreport/biz/b$b;-><init>(Lcom/uqm/crashsight/crashreport/biz/b;)V

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/biz/b$b;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    .line 438
    invoke-static {v4}, Lcom/uqm/crashsight/crashreport/biz/b;->b(Lcom/uqm/crashsight/crashreport/biz/b;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x1388

    add-long/2addr v4, v0

    .line 437
    invoke-virtual {v2, v3, v4, v5}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;J)Z

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$b;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/uqm/crashsight/crashreport/biz/b;->a(IZJ)V

    .line 442
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$b;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/biz/b;->a()V

    return-void
.end method
