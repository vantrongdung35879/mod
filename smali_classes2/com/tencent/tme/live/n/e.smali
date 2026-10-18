.class public Lcom/tencent/tme/live/n/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:J

.field public b:F

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/tme/live/n/e;->b:F

    iput-wide p1, p0, Lcom/tencent/tme/live/n/e;->a:J

    iput-wide p1, p0, Lcom/tencent/tme/live/n/e;->c:J

    return-void
.end method
