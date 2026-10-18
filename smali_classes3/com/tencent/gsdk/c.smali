.class abstract Lcom/tencent/gsdk/c;
.super Ljava/lang/Object;
.source "AbsSpeedTester.java"

# interfaces
.implements Lcom/tencent/gsdk/g0;


# instance fields
.field private a:Lcom/tencent/gsdk/e0;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/InetAddress;II)S
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/gsdk/c;->b(Ljava/net/InetAddress;II)S

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/tencent/gsdk/c;->a:Lcom/tencent/gsdk/e0;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/tencent/gsdk/e0;->a(S)V

    :cond_0
    return p1
.end method

.method public a(Lcom/tencent/gsdk/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/gsdk/c;->a:Lcom/tencent/gsdk/e0;

    return-void
.end method

.method protected abstract b(Ljava/net/InetAddress;II)S
.end method
