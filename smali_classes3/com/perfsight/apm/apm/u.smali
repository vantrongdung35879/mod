.class Lcom/perfsight/apm/apm/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perfsight/apm/apm/v;-><init>(Landroid/content/Context;Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/perfsight/apm/apm/v;


# direct methods
.method constructor <init>(Lcom/perfsight/apm/apm/v;)V
    .locals 0

    iput-object p1, p0, Lcom/perfsight/apm/apm/u;->a:Lcom/perfsight/apm/apm/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 7

    iget-object v0, p0, Lcom/perfsight/apm/apm/u;->a:Lcom/perfsight/apm/apm/v;

    invoke-static {v0}, Lcom/perfsight/apm/apm/v;->a(Lcom/perfsight/apm/apm/v;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/perfsight/apm/apm/u;->a:Lcom/perfsight/apm/apm/v;

    invoke-static {v2}, Lcom/perfsight/apm/apm/v;->b(Lcom/perfsight/apm/apm/v;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/perfsight/apm/apm/u;->a:Lcom/perfsight/apm/apm/v;

    invoke-static {v2}, Lcom/perfsight/apm/apm/v;->b(Lcom/perfsight/apm/apm/v;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfsight/apm/apm/c;->b()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postLowMemoryStatus(III)V

    iget-object v2, p0, Lcom/perfsight/apm/apm/u;->a:Lcom/perfsight/apm/apm/v;

    invoke-static {v2, v0, v1}, Lcom/perfsight/apm/apm/v;->a(Lcom/perfsight/apm/apm/v;J)J

    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 7

    iget-object v0, p0, Lcom/perfsight/apm/apm/u;->a:Lcom/perfsight/apm/apm/v;

    invoke-static {v0}, Lcom/perfsight/apm/apm/v;->a(Lcom/perfsight/apm/apm/v;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/perfsight/apm/apm/u;->a:Lcom/perfsight/apm/apm/v;

    invoke-static {v2}, Lcom/perfsight/apm/apm/v;->b(Lcom/perfsight/apm/apm/v;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/perfsight/apm/apm/u;->a:Lcom/perfsight/apm/apm/v;

    invoke-static {v2}, Lcom/perfsight/apm/apm/v;->b(Lcom/perfsight/apm/apm/v;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfsight/apm/apm/c;->b()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, p1, v2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->postLowMemoryStatus(III)V

    iget-object p1, p0, Lcom/perfsight/apm/apm/u;->a:Lcom/perfsight/apm/apm/v;

    invoke-static {p1, v0, v1}, Lcom/perfsight/apm/apm/v;->a(Lcom/perfsight/apm/apm/v;J)J

    :cond_1
    return-void
.end method
