.class final Lcom/tencent/gsdk/u0$a;
.super Ljava/lang/Object;
.source "SpeedTestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/net/InetAddress;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/gsdk/u0$a;->b:Ljava/net/InetAddress;

    .line 6
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 10
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/tencent/gsdk/u0$a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 11
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/gsdk/u0$a;->c:I

    .line 12
    invoke-static {p1}, Lcom/tencent/gsdk/u0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/u0$a;->b:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/gsdk/u0$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gsdk/u0$a;->b:Ljava/net/InetAddress;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/gsdk/u0$a;->b:Ljava/net/InetAddress;

    return-object v0
.end method
