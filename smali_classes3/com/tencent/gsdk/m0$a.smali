.class Lcom/tencent/gsdk/m0$a;
.super Lcom/tencent/gsdk/d;
.source "LoginEventRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gsdk/m0;->a(Lcom/tencent/gsdk/m0$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/gsdk/d;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/gsdk/d;->e(Landroid/app/Activity;)V

    .line 3
    invoke-static {}, Lcom/tencent/gsdk/m0;->a()Lcom/tencent/gsdk/l0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gsdk/l0;->c()Lcom/tencent/gsdk/k0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-boolean p1, p1, Lcom/tencent/gsdk/k0;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/tencent/gsdk/m0;->a()Lcom/tencent/gsdk/l0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gsdk/l0;->a()Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/tencent/gsdk/m0;->b()Lcom/tencent/gsdk/m0$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/tencent/gsdk/m0;->a(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tencent/gsdk/m0$b;->a(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
