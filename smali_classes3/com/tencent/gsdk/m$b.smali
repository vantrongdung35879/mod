.class Lcom/tencent/gsdk/m$b;
.super Lcom/tencent/gsdk/d;
.source "CallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gsdk/m;-><init>(Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/gsdk/m;


# direct methods
.method constructor <init>(Lcom/tencent/gsdk/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/gsdk/m$b;->a:Lcom/tencent/gsdk/m;

    invoke-direct {p0}, Lcom/tencent/gsdk/d;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/gsdk/d;->e(Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/gsdk/m$b;->a:Lcom/tencent/gsdk/m;

    invoke-static {p1}, Lcom/tencent/gsdk/m;->c(Lcom/tencent/gsdk/m;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/gsdk/m$b;->a:Lcom/tencent/gsdk/m;

    invoke-static {v0}, Lcom/tencent/gsdk/m;->b(Lcom/tencent/gsdk/m;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
