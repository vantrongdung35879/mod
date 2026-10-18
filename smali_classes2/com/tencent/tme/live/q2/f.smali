.class public Lcom/tencent/tme/live/q2/f;
.super Lcom/tencent/tme/live/q2/z;


# instance fields
.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "acTL"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/z;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 2

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/q2/f;->d:I

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/q2/f;->e:I

    return-void
.end method
