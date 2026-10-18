.class public Lcom/tencent/tme/live/i1/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/concurrent/ScheduledExecutorService;

.field public b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

.field public d:Landroid/content/Context;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/i1/d;->e:I

    const/16 v1, 0x1388

    iput v1, p0, Lcom/tencent/tme/live/i1/d;->f:I

    iput-boolean v0, p0, Lcom/tencent/tme/live/i1/d;->g:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/i1/d;->h:Z

    new-instance v0, Lcom/tencent/tme/live/i1/d$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/i1/d$a;-><init>(Lcom/tencent/tme/live/i1/d;)V

    iput-object v0, p0, Lcom/tencent/tme/live/i1/d;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 1
    new-instance v2, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v2, v1}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 2
    new-instance v1, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 3
    iput-object p0, v1, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 4
    new-instance v3, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v3, v1}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 5
    new-instance p0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 6
    iput p1, p0, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 7
    new-instance v4, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v4, p0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 8
    new-instance p0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 9
    new-instance v5, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v5, p0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 10
    const-string v1, "PoptvPeroidClick_aov"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    return-void
.end method
