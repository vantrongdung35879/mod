.class public Lcom/tencent/tme/live/o1/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/o1/b;


# instance fields
.field public final a:Lcom/tencent/tme/live/o1/f;

.field public final b:Lcom/tencent/tme/live/o1/n;

.field public c:Lcom/tencent/tme/live/o1/c;

.field public d:Lcom/tencent/tme/live/o1/d;

.field public e:Lcom/tencent/tme/live/w0/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/o1/f;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/o1/f;-><init>(Lcom/tencent/tme/live/o1/b;)V

    iput-object v0, p0, Lcom/tencent/tme/live/o1/m;->a:Lcom/tencent/tme/live/o1/f;

    new-instance v0, Lcom/tencent/tme/live/o1/n;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/o1/n;-><init>(Lcom/tencent/tme/live/o1/b;)V

    iput-object v0, p0, Lcom/tencent/tme/live/o1/m;->b:Lcom/tencent/tme/live/o1/n;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/o1/m;->a:Lcom/tencent/tme/live/o1/f;

    if-eqz v0, :cond_1

    .line 2
    iput-boolean p1, v0, Lcom/tencent/tme/live/o1/f;->b:Z

    iget-boolean p1, v0, Lcom/tencent/tme/live/o1/f;->b:Z

    invoke-virtual {v0}, Lcom/tencent/tme/live/o1/f;->a()V

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/tencent/tme/live/o1/e;

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/o1/e;-><init>(Lcom/tencent/tme/live/o1/f;)V

    iput-object p1, v0, Lcom/tencent/tme/live/o1/f;->e:Ljava/lang/Runnable;

    iget-object v1, v0, Lcom/tencent/tme/live/o1/f;->c:Landroid/os/Handler;

    .line 4
    iget v0, v0, Lcom/tencent/tme/live/o1/f;->d:I

    int-to-long v2, v0

    .line 5
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
