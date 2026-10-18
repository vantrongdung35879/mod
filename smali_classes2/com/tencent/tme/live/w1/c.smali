.class public Lcom/tencent/tme/live/w1/c;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;
    .locals 0

    new-instance p1, Lcom/tencent/tme/live/w1/c;

    invoke-direct {p1}, Lcom/tencent/tme/live/w1/c;-><init>()V

    iput p0, p1, Lcom/tencent/tme/live/w1/c;->a:I

    iput-object p2, p1, Lcom/tencent/tme/live/w1/c;->b:[B

    return-object p1
.end method
