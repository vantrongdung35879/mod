.class public Lcom/tencent/tme/live/i1/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/i1/c$b;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:I

.field public c:Lcom/tencent/tme/live/i1/c$b;

.field public d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/i1/c;->a:Landroid/os/Handler;

    const/16 v1, 0x2710

    iput v1, p0, Lcom/tencent/tme/live/i1/c;->b:I

    iput-object v0, p0, Lcom/tencent/tme/live/i1/c;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    new-instance v0, Lcom/tencent/tme/live/i1/c$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/i1/c$a;-><init>(Lcom/tencent/tme/live/i1/c;)V

    iput-object v0, p0, Lcom/tencent/tme/live/i1/c;->e:Ljava/lang/Runnable;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tme/live/i1/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/i1/c;->g:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tme/live/i1/c;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/i1/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/i1/c;->g:Z

    return p1
.end method
