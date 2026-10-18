.class public Lcom/tencent/tme/live/o1/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/o1/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/o1/a$a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/w0/i;

.field public final synthetic b:Lcom/tencent/tme/live/o1/m;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/m;Lcom/tencent/tme/live/w0/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o1/h;->b:Lcom/tencent/tme/live/o1/m;

    iput-object p2, p0, Lcom/tencent/tme/live/o1/h;->a:Lcom/tencent/tme/live/w0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v1

    new-instance v2, Lcom/tencent/tme/live/o1/g;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/tme/live/o1/g;-><init>(Lcom/tencent/tme/live/o1/h;Ljava/lang/Integer;Ljava/lang/Object;)V

    int-to-long p1, v0

    .line 2
    invoke-virtual {v1}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
