.class Lcom/tencent/mna/m;
.super Ljava/lang/Object;
.source "BindingConfig.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:I

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/m;->a:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tencent/mna/m;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/mna/m;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/tencent/mna/m;->d:I

    .line 7
    iput v0, p0, Lcom/tencent/mna/m;->e:I

    .line 8
    iput v0, p0, Lcom/tencent/mna/m;->f:I

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/m;->g:Ljava/util/List;

    return-void
.end method

.method private a()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/m;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/tencent/mna/d;->b1()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/m;->d:I

    .line 3
    invoke-static {}, Lcom/tencent/mna/d;->H()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/m;->b:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/tencent/mna/d;->I()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/m;->e:I

    .line 6
    invoke-static {}, Lcom/tencent/mna/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/m;->c:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/tencent/mna/d;->g()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/m;->f:I

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[N]mobile control config from main:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mna/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private a(Landroid/content/Context;II)I
    .locals 4

    .line 9
    invoke-static {p1}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    .line 10
    new-instance v1, Lcom/tencent/mna/e$b;

    invoke-direct {v1}, Lcom/tencent/mna/e$b;-><init>()V

    sget v2, Lcom/tencent/mna/t0;->a:I

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->d(I)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->i(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->e(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    .line 14
    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v3

    .line 15
    invoke-static {v2, v3}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->b(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 17
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->d(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 18
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->c(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 19
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->f(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 20
    invoke-static {p1}, Lcom/tencent/mna/base/utils/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->a(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 21
    invoke-static {p1}, Lcom/tencent/mna/base/utils/WifiUtil;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->a(I)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 22
    invoke-static {p1}, Lcom/tencent/mna/base/utils/WifiUtil;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->h(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/t0;->t:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2}, Lcom/tencent/mna/e$b;->g(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lcom/tencent/mna/e$b;->b(I)Lcom/tencent/mna/e$b;

    move-result-object v1

    .line 25
    invoke-static {p1, v0}, Lcom/tencent/mna/base/utils/c;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/tencent/mna/e$b;->c(I)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/tencent/mna/e$b;->a()Lcom/tencent/mna/e;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/mna/d;->a(Ljava/lang/String;Lcom/tencent/mna/e;II)Lcom/tencent/mna/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/mna/d;->a(Ljava/lang/String;Lcom/tencent/mna/e;II)Lcom/tencent/mna/c;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 37
    iget-object p1, v0, Lcom/tencent/mna/s;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mna/m;->a:Ljava/lang/String;

    .line 38
    iget p1, v0, Lcom/tencent/mna/s;->b:I

    iput p1, p0, Lcom/tencent/mna/m;->d:I

    .line 39
    iget-object p1, v0, Lcom/tencent/mna/s;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mna/m;->b:Ljava/lang/String;

    .line 40
    iget p1, v0, Lcom/tencent/mna/s;->d:I

    iput p1, p0, Lcom/tencent/mna/m;->e:I

    .line 41
    iget-object p1, v0, Lcom/tencent/mna/c;->e1:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mna/m;->c:Ljava/lang/String;

    .line 42
    iget p1, v0, Lcom/tencent/mna/c;->f1:I

    iput p1, p0, Lcom/tencent/mna/m;->f:I

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[N]mobile control config from aux:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mna/m;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public b(Landroid/content/Context;II)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mna/m;->a(Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mna/m;->a()I

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, -0x74

    return p1

    .line 10
    :cond_1
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/tencent/mna/m;->g:Ljava/util/List;

    .line 11
    invoke-static {}, Lcom/tencent/mna/t0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/tencent/mna/n1;->a(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object p1

    if-nez p1, :cond_2

    const/16 p1, -0x75

    return p1

    .line 15
    :cond_2
    array-length p2, p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v1, p1, v0

    .line 16
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    iget-object v2, p0, Lcom/tencent/mna/m;->g:Ljava/util/List;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/tencent/mna/m;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_5

    const/16 p1, -0x76

    return p1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[N]W2M domain:["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/t0;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] to 4GVips:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/mna/m;->g:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return p3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BindingConfig{mSpeedIp=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mSpeedPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEdgeIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mEdgePort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/m;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMutiProxyIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mMutiProxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/m;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
