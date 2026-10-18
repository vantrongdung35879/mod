.class Lcom/tencent/gsdk/m$a;
.super Ljava/lang/Object;
.source "CallRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/m;
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
    iput-object p1, p0, Lcom/tencent/gsdk/m$a;->a:Lcom/tencent/gsdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/m$a;->a:Lcom/tencent/gsdk/m;

    invoke-static {v0}, Lcom/tencent/gsdk/m;->a(Lcom/tencent/gsdk/m;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/gsdk/m$a;->a:Lcom/tencent/gsdk/m;

    invoke-static {v0}, Lcom/tencent/gsdk/m;->c(Lcom/tencent/gsdk/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gsdk/m$a;->a:Lcom/tencent/gsdk/m;

    invoke-static {v1}, Lcom/tencent/gsdk/m;->b(Lcom/tencent/gsdk/m;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/gsdk/m$a;->a:Lcom/tencent/gsdk/m;

    invoke-static {v0}, Lcom/tencent/gsdk/m;->c(Lcom/tencent/gsdk/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gsdk/m$a;->a:Lcom/tencent/gsdk/m;

    invoke-static {v1}, Lcom/tencent/gsdk/m;->b(Lcom/tencent/gsdk/m;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/gsdk/m$a;->a:Lcom/tencent/gsdk/m;

    invoke-static {v2}, Lcom/tencent/gsdk/m;->d(Lcom/tencent/gsdk/m;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
