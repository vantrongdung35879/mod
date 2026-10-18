.class public Lcom/tencent/beacon/e/j;
.super Ljava/lang/Object;
.source "StrategyStoreBean.java"


# instance fields
.field protected a:J

.field protected b:I

.field protected c:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/tencent/beacon/e/j;->a:J

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/tencent/beacon/e/j;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/beacon/e/j;->c:[B

    return-void
.end method
