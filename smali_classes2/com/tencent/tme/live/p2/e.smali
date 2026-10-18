.class public Lcom/tencent/tme/live/p2/e;
.super Lcom/tencent/tme/live/p2/c;


# instance fields
.field public final synthetic g:Lcom/tencent/tme/live/p2/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/d;ILjava/lang/String;JI)V
    .locals 6

    iput-object p1, p0, Lcom/tencent/tme/live/p2/e;->g:Lcom/tencent/tme/live/p2/d;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/p2/c;-><init>(ILjava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public a(I[BII)V
    .locals 0

    new-instance p1, Lcom/tencent/tme/live/p2/w;

    const-string p2, "should never happen"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/w;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/e;->g:Lcom/tencent/tme/live/p2/d;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/p2/d;->a(Lcom/tencent/tme/live/p2/c;)V

    return-void
.end method
