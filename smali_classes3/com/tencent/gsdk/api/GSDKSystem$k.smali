.class Lcom/tencent/gsdk/api/GSDKSystem$k;
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
    name = "k"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Lcom/tencent/gsdk/api/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/tencent/gsdk/api/a;->h:I

    iput v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$k;->a:I

    .line 3
    iget p1, p1, Lcom/tencent/gsdk/api/a;->g:I

    iput p1, p0, Lcom/tencent/gsdk/api/GSDKSystem$k;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$k;->a:I

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->E:Ljava/util/List;

    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gsdk/y0;->a(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->D:Ljava/util/List;

    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gsdk/y0;->d(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$k;->b:I

    if-lez v0, :cond_5

    .line 6
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/tencent/gsdk/y0;->i()F

    move-result v0

    float-to-long v0, v0

    .line 8
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->G:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->F:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/tencent/gsdk/y0;->g()F

    move-result v0

    float-to-long v0, v0

    .line 12
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->F:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lcom/tencent/gsdk/y0;->a()J

    move-result-wide v0

    .line 16
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->H:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 19
    invoke-static {}, Lcom/tencent/gsdk/y0;->c()J

    move-result-wide v0

    .line 20
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->I:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_4
    sget-object v0, Lcom/tencent/gsdk/api/GSDKSystem;->J:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 23
    invoke-static {}, Lcom/tencent/gsdk/y0;->d()I

    move-result v0

    int-to-long v0, v0

    .line 24
    sget-object v2, Lcom/tencent/gsdk/api/GSDKSystem;->J:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method
