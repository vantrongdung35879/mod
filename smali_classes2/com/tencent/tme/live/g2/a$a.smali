.class public Lcom/tencent/tme/live/g2/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/c2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/g2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/g2/a$a;->b(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/k;

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/c2/i<",
            "*>;)",
            "Lcom/tencent/tme/live/c2/k;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t add a listener to a dummy future."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public getSession()Lcom/tencent/tme/live/f2/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
