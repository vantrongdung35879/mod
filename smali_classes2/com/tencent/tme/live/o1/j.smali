.class public Lcom/tencent/tme/live/o1/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/o1/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/o1/a$a<",
        "Lcom/tencent/tme/live/w0/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/o1/m;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o1/j;->a:Lcom/tencent/tme/live/o1/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/tencent/tme/live/w0/k;

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/o1/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/o1/i;-><init>(Lcom/tencent/tme/live/o1/j;Lcom/tencent/tme/live/w0/k;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
