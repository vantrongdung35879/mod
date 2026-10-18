.class public abstract Lcom/tencent/qimei/ap/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;
    .locals 1

    .line 5
    invoke-static {p0}, Lcom/tencent/qimei/ap/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/tencent/qimei/ak/b;->b:Lcom/tencent/qimei/sdk/Qimei;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/qimei/sdk/Qimei;

    sget-object v1, Lcom/tencent/qimei/ak/c;->a:Lcom/tencent/qimei/aa/d;

    invoke-virtual {v1, p1}, Lcom/tencent/qimei/aa/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qimei/ak/c;->b:Lcom/tencent/qimei/aa/d;

    invoke-virtual {v2, p1}, Lcom/tencent/qimei/aa/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Lcom/tencent/qimei/sdk/Qimei;

    sget-object v1, Lcom/tencent/qimei/ak/c;->c:Lcom/tencent/qimei/aa/d;

    invoke-virtual {v1, p1}, Lcom/tencent/qimei/aa/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qimei/ak/c;->d:Lcom/tencent/qimei/aa/d;

    invoke-virtual {v2, p1}, Lcom/tencent/qimei/aa/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/tencent/qimei/ak/m;)V
    .locals 6

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 11
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x18

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4, p0}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/tencent/qimei/ar/d;->a()Lcom/tencent/qimei/ar/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/ar/d;->i()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;
    .locals 6

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    .line 2
    new-instance v2, Lcom/tencent/qimei/ap/d;

    invoke-direct {v2, v1, p0}, Lcom/tencent/qimei/ap/d;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lcom/tencent/qimei/w/b;

    invoke-direct {v3}, Lcom/tencent/qimei/w/b;-><init>()V

    .line 4
    const-string v4, "lccNoCN"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v2, v5}, Lcom/tencent/qimei/w/b;->a(Ljava/lang/String;Lcom/tencent/qimei/w/a;I)Z

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object v3, v4, v0

    const-string v0, "[appInfo]"

    const-string v3, "appKey:%s query readable lock state %b"

    invoke-static {v0, v3, v4}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_0

    .line 6
    sget-object v0, Lcom/tencent/qimei/an/a;->a:Lcom/tencent/qimei/an/b;

    invoke-virtual {v0, p0}, Lcom/tencent/qimei/an/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    .line 8
    :cond_0
    aget-object v0, v1, v5

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {p0, v0}, Lcom/tencent/qimei/ap/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
