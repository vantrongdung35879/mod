.class public Lcom/tencent/mna/u1;
.super Lcom/tencent/mna/d0;
.source "LocalGameStatusMessenger.java"


# static fields
.field private static o:Lcom/tencent/mna/u1;


# instance fields
.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/tencent/mna/d0;-><init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V

    .line 2
    iput v1, p0, Lcom/tencent/mna/u1;->l:I

    .line 3
    iput-boolean v1, p0, Lcom/tencent/mna/u1;->m:Z

    .line 4
    iput-boolean v1, p0, Lcom/tencent/mna/u1;->n:Z

    .line 8
    invoke-direct {p0}, Lcom/tencent/mna/u1;->b()V

    .line 9
    invoke-virtual {p0}, Lcom/tencent/mna/u1;->c()V

    return-void
.end method

.method private b()V
    .locals 6

    const-string v0, "Transport get UserId:"

    .line 1
    iget v1, p0, Lcom/tencent/mna/u1;->l:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/mna/t0;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/mna/t0;->w:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-wide v3, 0xffffffffL

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    long-to-int v2, v1

    .line 6
    iput v2, p0, Lcom/tencent/mna/u1;->l:I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mna/u1;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to unsigned:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/u1;->l:I

    invoke-static {v2}, Lcom/tencent/mna/v;->b(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mna/t0;->w:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;I)Z
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/tencent/mna/n1;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 12
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/tencent/mna/d;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static d()Lcom/tencent/mna/u1;
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/mna/u1;->o:Lcom/tencent/mna/u1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/mna/u1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/mna/u1;->o:Lcom/tencent/mna/u1;

    if-nez v1, :cond_0

    .line 4
    const-string v1, "116.128.135.223"

    .line 6
    new-instance v2, Lcom/tencent/mna/u1;

    const/16 v3, 0x1390

    invoke-direct {v2, v1, v3}, Lcom/tencent/mna/u1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tencent/mna/u1;->o:Lcom/tencent/mna/u1;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/mna/u1;->o:Lcom/tencent/mna/u1;

    return-object v0
.end method

.method private e(I)Z
    .locals 1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "transportInfo EndSpeed not authed, msg:"

    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mna/u1;->b()V

    const/16 v1, 0x65

    .line 13
    invoke-virtual {p0, v1}, Lcom/tencent/mna/u1;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    iget v0, p0, Lcom/tencent/mna/d0;->f:I

    iget v1, p0, Lcom/tencent/mna/d0;->d:I

    iget v2, p0, Lcom/tencent/mna/d0;->e:I

    iget v3, p0, Lcom/tencent/mna/u1;->l:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tencent/mna/base/jni/e;->a(IIIILjava/lang/String;)I

    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->d(I)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    const/4 p1, -0x4

    return p1
.end method

.method public a([I[I[I)I
    .locals 8

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mna/u1;->b()V

    const/16 v0, 0x67

    .line 4
    invoke-virtual {p0, v0}, Lcom/tencent/mna/u1;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lcom/tencent/mna/d0;->f:I

    iget v2, p0, Lcom/tencent/mna/d0;->d:I

    iget v3, p0, Lcom/tencent/mna/d0;->e:I

    iget v4, p0, Lcom/tencent/mna/u1;->l:I

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/tencent/mna/base/jni/e;->a(IIII[I[I[I)I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->d(I)V

    goto :goto_0

    .line 9
    :cond_0
    const-string/jumbo p1, "transportInfo FpsMoveClick not authed"

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    const/4 p1, -0x4

    return p1
.end method

.method public a(II)V
    .locals 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/tencent/mna/u1;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0x2328

    if-gt p2, v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "transportInfo update auth failed, for type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", res:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/tencent/mna/u1;->n:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/tencent/mna/u1;->n:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILjava/lang/String;)I
    .locals 10

    const-string/jumbo v0, "transportInfo not authed, for type:"

    .line 22
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mna/u1;->b()V

    const/16 v1, 0x69

    if-ne p1, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/tencent/mna/u1;->c()V

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mna/u1;->f(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0xc8

    const/16 v9, 0xc8

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mna/u1;->g(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    iget v3, p0, Lcom/tencent/mna/d0;->f:I

    iget v4, p0, Lcom/tencent/mna/d0;->d:I

    iget v5, p0, Lcom/tencent/mna/d0;->e:I

    iget v6, p0, Lcom/tencent/mna/u1;->l:I

    move v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/tencent/mna/base/jni/e;->a(IIIIILjava/lang/String;I)I

    move-result v2

    .line 34
    invoke-virtual {p0, v2}, Lcom/tencent/mna/d0;->d(I)V

    .line 35
    invoke-virtual {p0, p1, v2}, Lcom/tencent/mna/u1;->a(II)V

    goto :goto_1

    .line 37
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return v2

    :catchall_0
    const/4 p1, -0x4

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "transportInfo StartSpeed not authed, msg:"

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mna/u1;->b()V

    const/16 v1, 0x65

    .line 16
    invoke-virtual {p0, v1}, Lcom/tencent/mna/u1;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iget v0, p0, Lcom/tencent/mna/d0;->f:I

    iget v1, p0, Lcom/tencent/mna/d0;->d:I

    iget v2, p0, Lcom/tencent/mna/d0;->e:I

    iget v3, p0, Lcom/tencent/mna/u1;->l:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tencent/mna/base/jni/e;->b(IIIILjava/lang/String;)I

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/tencent/mna/d0;->d(I)V

    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    const/4 p1, -0x4

    return p1
.end method

.method public c()V
    .locals 11

    .line 1
    const-string v0, ":"

    .line 0
    const-string v1, "Transport refreshSpeedIp to local:"

    const-string v2, "Transport refreshSpeedIp to remote:"

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->p1()Ljava/lang/String;

    move-result-object v3

    .line 2
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    const/4 v5, 0x0

    .line 5
    :try_start_0
    aget-object v7, v4, v5

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 6
    aget-object v4, v4, v8

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 7
    array-length v9, v7

    if-lt v9, v6, :cond_1

    array-length v9, v4

    if-lt v9, v6, :cond_1

    .line 8
    aget-object v6, v7, v5

    .line 9
    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 10
    aget-object v9, v4, v5

    .line 11
    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 12
    invoke-direct {p0, v6, v7}, Lcom/tencent/mna/u1;->b(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 13
    invoke-virtual {p0, v6, v7}, Lcom/tencent/mna/d0;->a(Ljava/lang/String;I)V

    .line 14
    iput-boolean v8, p0, Lcom/tencent/mna/u1;->m:Z

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v9, v4}, Lcom/tencent/mna/d0;->a(Ljava/lang/String;I)V

    .line 18
    iput-boolean v5, p0, Lcom/tencent/mna/u1;->m:Z

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", and local is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transport refreshSpeedIp exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transport refreshSpeedIp failed for transportServer config:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/u1;->n:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/u1;->m:Z

    return v0
.end method

.method public f(I)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/mna/u1;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/tencent/mna/u1;->m:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/mna/u1;->e(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/tencent/mna/u1;->m:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/mna/u1;->n:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
