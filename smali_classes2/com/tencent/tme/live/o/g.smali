.class public Lcom/tencent/tme/live/o/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/p/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/p/b<",
        "Lcom/tencent/tme/live/o/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/o/h;

.field public b:I

.field public c:Lcom/tencent/tme/live/o/g;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/o/g;->b:I

    iput v0, p0, Lcom/tencent/tme/live/o/g;->e:I

    new-instance v0, Lcom/tencent/tme/live/o/h;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o/g;->a:Lcom/tencent/tme/live/o/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/o/g;->c:Lcom/tencent/tme/live/o/g;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/live/o/g;

    .line 2
    iput-object p1, p0, Lcom/tencent/tme/live/o/g;->c:Lcom/tencent/tme/live/o/g;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/o/g;->d:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/o/g;->a:Lcom/tencent/tme/live/o/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/h;->a()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/o/g;->b:I

    iput v0, p0, Lcom/tencent/tme/live/o/g;->e:I

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/o/g;->a:Lcom/tencent/tme/live/o/h;

    iget-object v1, v0, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/tme/live/o/g;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
