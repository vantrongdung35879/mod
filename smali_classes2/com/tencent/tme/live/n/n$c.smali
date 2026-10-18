.class public Lcom/tencent/tme/live/n/n$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/n/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IIFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/n/n$c;->a:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/tme/live/n/n$c;->a(IIFF)V

    return-void
.end method


# virtual methods
.method public a(IIFF)V
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/n/n$c;->b:F

    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/tme/live/n/n$c;->c:F

    invoke-static {v0, p4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/tencent/tme/live/n/n$c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tme/live/n/n$c;->a:I

    :cond_1
    iput p1, p0, Lcom/tencent/tme/live/n/n$c;->d:I

    iput p2, p0, Lcom/tencent/tme/live/n/n$c;->e:I

    iput p3, p0, Lcom/tencent/tme/live/n/n$c;->b:F

    iput p4, p0, Lcom/tencent/tme/live/n/n$c;->c:F

    return-void
.end method
