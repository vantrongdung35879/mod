.class public Lcom/tencent/tme/live/g2/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/g2/d;


# static fields
.field public static final d:[B

.field public static final e:Lcom/tencent/tme/live/c2/k;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/tencent/tme/live/c2/k;

.field public final c:Ljava/net/SocketAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/tme/live/g2/a;->d:[B

    new-instance v0, Lcom/tencent/tme/live/g2/a$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/g2/a$a;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/g2/a;->e:Lcom/tencent/tme/live/c2/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/tencent/tme/live/c2/k;Ljava/net/SocketAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    sget-object p2, Lcom/tencent/tme/live/g2/a;->e:Lcom/tencent/tme/live/c2/k;

    :cond_0
    iput-object p1, p0, Lcom/tencent/tme/live/g2/a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tencent/tme/live/g2/a;->b:Lcom/tencent/tme/live/c2/k;

    iput-object p3, p0, Lcom/tencent/tme/live/g2/a;->c:Ljava/net/SocketAddress;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "message"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/g2/d;
    .locals 0

    return-object p0
.end method

.method public b()Lcom/tencent/tme/live/c2/k;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/g2/a;->b:Lcom/tencent/tme/live/c2/k;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/g2/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/g2/a;->c:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public e()Z
    .locals 1

    instance-of v0, p0, Lcom/tencent/tme/live/h2/e$a;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WriteRequest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tme/live/g2/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CLOSE_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/g2/a;->c:Ljava/net/SocketAddress;

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/g2/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/g2/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/tencent/tme/live/g2/a;->c:Ljava/net/SocketAddress;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
