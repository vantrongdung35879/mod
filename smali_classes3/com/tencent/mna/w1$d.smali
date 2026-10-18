.class public Lcom/tencent/mna/w1$d;
.super Ljava/lang/Object;
.source "LossRateCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/mna/w1$d;->e:I

    .line 5
    iput p1, p0, Lcom/tencent/mna/w1$d;->a:I

    .line 6
    iput p2, p0, Lcom/tencent/mna/w1$d;->b:I

    .line 7
    iput p3, p0, Lcom/tencent/mna/w1$d;->d:I

    .line 8
    iput-wide p4, p0, Lcom/tencent/mna/w1$d;->c:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/tencent/mna/w1$d;

    if-eq v3, v2, :cond_2

    return v0

    .line 4
    :cond_2
    check-cast p1, Lcom/tencent/mna/w1$d;

    .line 6
    iget v2, p0, Lcom/tencent/mna/w1$d;->b:I

    iget p1, p1, Lcom/tencent/mna/w1$d;->b:I

    if-ne v2, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/w1$d;->e:I

    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Lcom/tencent/mna/w1$d;->b:I

    .line 5
    iput v0, p0, Lcom/tencent/mna/w1$d;->e:I

    :cond_0
    return v0
.end method
