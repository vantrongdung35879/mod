.class public final Lcom/tencent/tme/live/e0/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/tencent/tme/live/e0/g;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Lcom/tencent/tme/live/e0/h;

.field public final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e0/g;Landroid/graphics/Bitmap;Lcom/tencent/tme/live/e0/h;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/e0/m;->a:Lcom/tencent/tme/live/e0/g;

    iput-object p2, p0, Lcom/tencent/tme/live/e0/m;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/tencent/tme/live/e0/m;->c:Lcom/tencent/tme/live/e0/h;

    iput-object p4, p0, Lcom/tencent/tme/live/e0/m;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/e0/m;->c:Lcom/tencent/tme/live/e0/h;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/h;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "PostProcess image before displaying [%s]"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e0/m;->c:Lcom/tencent/tme/live/e0/h;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/h;->e:Lcom/tencent/tme/live/e0/c;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e0/c;->p:Lcom/tencent/tme/live/m0/a;

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/e0/m;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/m0/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/e0/b;

    iget-object v2, p0, Lcom/tencent/tme/live/e0/m;->c:Lcom/tencent/tme/live/e0/h;

    iget-object v3, p0, Lcom/tencent/tme/live/e0/m;->a:Lcom/tencent/tme/live/e0/g;

    sget-object v4, Lcom/tencent/tme/live/f0/f;->c:Lcom/tencent/tme/live/f0/f;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/tencent/tme/live/e0/b;-><init>(Landroid/graphics/Bitmap;Lcom/tencent/tme/live/e0/h;Lcom/tencent/tme/live/e0/g;Lcom/tencent/tme/live/f0/f;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e0/m;->c:Lcom/tencent/tme/live/e0/h;

    iget-object v0, v0, Lcom/tencent/tme/live/e0/h;->e:Lcom/tencent/tme/live/e0/c;

    .line 3
    iget-boolean v0, v0, Lcom/tencent/tme/live/e0/c;->s:Z

    .line 4
    iget-object v2, p0, Lcom/tencent/tme/live/e0/m;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/tme/live/e0/m;->a:Lcom/tencent/tme/live/e0/g;

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/tme/live/e0/l;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/tencent/tme/live/e0/g;)V

    return-void
.end method
