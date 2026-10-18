.class public Lcom/tencent/tme/live/n/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/n/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/n/n$b;

.field public b:Lcom/tencent/tme/live/n/n$b;

.field public c:J

.field public d:J

.field public e:J

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/n/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/n/n$a;->b:Lcom/tencent/tme/live/n/n$b;

    iget-object v1, p0, Lcom/tencent/tme/live/n/n$a;->a:Lcom/tencent/tme/live/n/n$b;

    .line 1
    iget v2, v0, Lcom/tencent/tme/live/n/n$b;->a:F

    iget v3, v1, Lcom/tencent/tme/live/n/n$b;->a:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v0, v0, Lcom/tencent/tme/live/n/n$b;->b:F

    iget v1, v1, Lcom/tencent/tme/live/n/n$b;->b:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v2, v2, v2

    mul-float v0, v0, v0

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
