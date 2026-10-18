.class public abstract Lcom/tencent/tme/live/z1/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/tme/live/z1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/tencent/tme/live/z1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/z1/e;

    invoke-direct {v0}, Lcom/tencent/tme/live/z1/e;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/z1/b;->a:Lcom/tencent/tme/live/z1/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/tencent/tme/live/z1/b;
    .locals 3

    if-ltz p0, :cond_0

    .line 1
    sget-object v0, Lcom/tencent/tme/live/z1/b;->a:Lcom/tencent/tme/live/z1/c;

    check-cast v0, Lcom/tencent/tme/live/z1/e;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/tencent/tme/live/z1/e;->a(IZ)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    new-instance v1, Lcom/tencent/tme/live/z1/e$a;

    invoke-direct {v1, v0, p0}, Lcom/tencent/tme/live/z1/e$a;-><init>(Lcom/tencent/tme/live/z1/e;Ljava/nio/ByteBuffer;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/tencent/tme/live/z1/c;)V
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/tencent/tme/live/z1/b;->a:Lcom/tencent/tme/live/z1/c;

    sput-object p0, Lcom/tencent/tme/live/z1/b;->a:Lcom/tencent/tme/live/z1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "allocator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h()Lcom/tencent/tme/live/z1/c;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/z1/b;->a:Lcom/tencent/tme/live/z1/c;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/tencent/tme/live/z1/b;)Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract a(Ljava/nio/ByteBuffer;)Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract a(Ljava/nio/ByteOrder;)Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract a(Z)Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract a([B)Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract a([BII)Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract a()[B
.end method

.method public abstract b(I)Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract b()Ljava/nio/ByteBuffer;
.end method

.method public abstract c(I)B
.end method

.method public abstract c()I
.end method

.method public abstract d()Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract d(I)Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract e()Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract e(I)Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract f()Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract g()V
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public abstract l()I
.end method

.method public abstract m()Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract n()Ljava/nio/ByteOrder;
.end method

.method public abstract o()I
.end method

.method public abstract p()I
.end method

.method public abstract q()Lcom/tencent/tme/live/z1/b;
.end method

.method public abstract r()Lcom/tencent/tme/live/z1/b;
.end method
