.class public Lcom/tencent/tme/live/e2/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/e2/o;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/f2/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/f2/l;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, p7

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/tencent/tme/live/e2/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tme/live/e2/d;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/tme/live/e2/d;->c:Z

    iput-boolean p4, p0, Lcom/tencent/tme/live/e2/d;->d:Z

    iput-object p5, p0, Lcom/tencent/tme/live/e2/d;->e:Ljava/lang/Class;

    iput-object p6, p0, Lcom/tencent/tme/live/e2/d;->f:Ljava/lang/Class;

    new-instance p1, Lcom/tencent/tme/live/j2/f;

    invoke-direct {p1}, Lcom/tencent/tme/live/j2/f;-><init>()V

    array-length p2, p7

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p7, p3

    invoke-virtual {p1, p4}, Lcom/tencent/tme/live/j2/g;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "envelopeTypes is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "providerName is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tme/live/f2/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/e2/d;->f:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/e2/d;->b:Ljava/lang/String;

    return-object v0
.end method
