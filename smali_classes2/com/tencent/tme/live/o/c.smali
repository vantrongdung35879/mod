.class public Lcom/tencent/tme/live/o/c;
.super Ljava/lang/Object;


# static fields
.field public static final f:Lcom/tencent/tme/live/o/c;


# instance fields
.field public a:I

.field public b:F

.field public c:J

.field public d:F

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v7, Lcom/tencent/tme/live/o/c;

    const/16 v5, 0x32

    const v6, 0x3c23d70a    # 0.01f

    const/16 v1, 0x10

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tme/live/o/c;-><init>(IFJIF)V

    sput-object v7, Lcom/tencent/tme/live/o/c;->f:Lcom/tencent/tme/live/o/c;

    return-void
.end method

.method public constructor <init>(IFJIF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/tencent/tme/live/o/c;->b:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/o/c;->c:J

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/tencent/tme/live/o/c;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/o/c;->e:I

    iput p1, p0, Lcom/tencent/tme/live/o/c;->a:I

    sget p1, Lcom/tencent/tme/live/b/a;->a:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    const/16 p1, 0x20

    iput p1, p0, Lcom/tencent/tme/live/o/c;->a:I

    :cond_0
    iput p2, p0, Lcom/tencent/tme/live/o/c;->b:F

    iput-wide p3, p0, Lcom/tencent/tme/live/o/c;->c:J

    iput p5, p0, Lcom/tencent/tme/live/o/c;->e:I

    iput p6, p0, Lcom/tencent/tme/live/o/c;->d:F

    return-void
.end method
