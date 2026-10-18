.class public Lcom/tencent/tme/live/o1/l;
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tencent/tme/live/o1/m;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o1/l;->c:Lcom/tencent/tme/live/o1/m;

    iput-object p2, p0, Lcom/tencent/tme/live/o1/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tme/live/o1/l;->b:Ljava/lang/String;

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

    new-instance v1, Lcom/tencent/tme/live/o1/k;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/tme/live/o1/k;-><init>(Lcom/tencent/tme/live/o1/l;Ljava/lang/Object;Lcom/tencent/tme/live/w0/k;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
