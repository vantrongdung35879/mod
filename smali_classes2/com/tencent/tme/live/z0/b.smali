.class public Lcom/tencent/tme/live/z0/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/z0/b$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/z0/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/z0/b;->a:I

    iput v0, p0, Lcom/tencent/tme/live/z0/b;->b:I

    iput v0, p0, Lcom/tencent/tme/live/z0/b;->c:I

    iput v0, p0, Lcom/tencent/tme/live/z0/b;->d:I

    invoke-static {p1}, Lcom/tencent/tme/live/z0/b$a;->a(Lcom/tencent/tme/live/z0/b$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/z0/b;->a:I

    invoke-static {p1}, Lcom/tencent/tme/live/z0/b$a;->b(Lcom/tencent/tme/live/z0/b$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/z0/b;->b:I

    invoke-static {p1}, Lcom/tencent/tme/live/z0/b$a;->c(Lcom/tencent/tme/live/z0/b$a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/z0/b;->c:I

    invoke-static {p1}, Lcom/tencent/tme/live/z0/b$a;->d(Lcom/tencent/tme/live/z0/b$a;)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/z0/b;->d:I

    return-void
.end method
