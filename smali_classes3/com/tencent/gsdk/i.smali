.class public final Lcom/tencent/gsdk/i;
.super Ljava/lang/Number;
.source "AtomicFloat.java"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/gsdk/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/gsdk/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final a(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/gsdk/i;->a()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/gsdk/i;->a()F

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/gsdk/i;->a()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/gsdk/i;->a()F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method
