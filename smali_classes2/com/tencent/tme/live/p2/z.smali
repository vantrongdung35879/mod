.class public Lcom/tencent/tme/live/p2/z;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tencent/tme/live/p2/o;

.field public final b:Lcom/tencent/tme/live/p2/j;

.field public final c:Z

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;Lcom/tencent/tme/live/p2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/p2/z;->a:Lcom/tencent/tme/live/p2/o;

    iput-object p2, p0, Lcom/tencent/tme/live/p2/z;->b:Lcom/tencent/tme/live/p2/j;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/tme/live/p2/z;->c:Z

    return-void
.end method
