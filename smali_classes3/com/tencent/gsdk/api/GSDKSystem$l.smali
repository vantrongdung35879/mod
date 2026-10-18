.class Lcom/tencent/gsdk/api/GSDKSystem$l;
.super Ljava/lang/Object;
.source "GSDKSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/api/GSDKSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Lcom/tencent/gsdk/api/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p1, p1, Lcom/tencent/gsdk/api/a;->q:I

    iput p1, p0, Lcom/tencent/gsdk/api/GSDKSystem$l;->a:I

    .line 3
    iput p2, p0, Lcom/tencent/gsdk/api/GSDKSystem$l;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$l;->a:I

    const/4 v1, 0x4

    if-lez v0, :cond_1

    iget v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$l;->b:I

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/s;->d(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/gsdk/api/GSDKSystem;->a(I)I

    .line 4
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->M:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/s;->c(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 10
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->N:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/s;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$l;->b:I

    if-eq v0, v1, :cond_3

    .line 14
    invoke-static {}, Lcom/tencent/gsdk/s;->b()I

    move-result v0

    int-to-long v0, v0

    .line 15
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->L:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->M:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method
