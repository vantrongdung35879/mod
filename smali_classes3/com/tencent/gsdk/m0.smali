.class public Lcom/tencent/gsdk/m0;
.super Ljava/lang/Object;
.source "LoginEventRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gsdk/m0$b;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/gsdk/l0;

.field private static b:Z

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/tencent/gsdk/m0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/gsdk/l0;

    invoke-direct {v0}, Lcom/tencent/gsdk/l0;-><init>()V

    sput-object v0, Lcom/tencent/gsdk/m0;->a:Lcom/tencent/gsdk/l0;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/tencent/gsdk/m0;->b:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/gsdk/m0;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/tencent/gsdk/m0;->d:Lcom/tencent/gsdk/m0$b;

    return-void
.end method

.method static synthetic a()Lcom/tencent/gsdk/l0;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/m0;->a:Lcom/tencent/gsdk/l0;

    return-object v0
.end method

.method static synthetic a(Ljava/util/List;Z)Ljava/util/Map;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/gsdk/m0;->b(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(IZZLjava/lang/String;Z)V
    .locals 7

    .line 7
    sget-object v0, Lcom/tencent/gsdk/m0;->d:Lcom/tencent/gsdk/m0$b;

    if-eqz v0, :cond_2

    .line 10
    sget-boolean v0, Lcom/tencent/gsdk/m0;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/tencent/gsdk/k0;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/gsdk/k0;-><init>(IZZLjava/lang/String;Z)V

    const/4 p0, 0x1

    .line 16
    new-array p1, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const-string p3, "Record %s"

    invoke-static {p3, p1}, Lcom/tencent/gsdk/x;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :try_start_0
    sget-object p1, Lcom/tencent/gsdk/m0;->a:Lcom/tencent/gsdk/l0;

    invoke-virtual {p1, v0}, Lcom/tencent/gsdk/l0;->a(Lcom/tencent/gsdk/k0;)V

    .line 19
    invoke-virtual {v0}, Lcom/tencent/gsdk/k0;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    sget-object p1, Lcom/tencent/gsdk/m0;->a:Lcom/tencent/gsdk/l0;

    invoke-virtual {p1}, Lcom/tencent/gsdk/l0;->b()Ljava/util/List;

    move-result-object p1

    .line 21
    sget-object p3, Lcom/tencent/gsdk/m0;->d:Lcom/tencent/gsdk/m0$b;

    invoke-static {p1, p2}, Lcom/tencent/gsdk/m0;->b(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/tencent/gsdk/m0$b;->a(Ljava/util/Map;)V

    .line 22
    iget-boolean p1, v0, Lcom/tencent/gsdk/k0;->c:Z

    if-eqz p1, :cond_1

    .line 23
    sput-boolean p0, Lcom/tencent/gsdk/m0;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "Record event failed"

    invoke-static {p0, p2, p1}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LoginEventRecorder has not initialized yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/tencent/gsdk/m0$b;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/tencent/gsdk/m0;->d:Lcom/tencent/gsdk/m0$b;

    .line 4
    invoke-static {}, Lcom/tencent/gsdk/k0;->a()V

    .line 5
    new-instance p0, Lcom/tencent/gsdk/m0$a;

    invoke-direct {p0}, Lcom/tencent/gsdk/m0$a;-><init>()V

    invoke-static {p0}, Lcom/tencent/gsdk/e;->a(Lcom/tencent/gsdk/d;)Z

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "reportHints can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/tencent/gsdk/m0;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/tencent/gsdk/m0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/m0;->d:Lcom/tencent/gsdk/m0$b;

    return-object v0
.end method

.method private static b(Ljava/util/List;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/gsdk/k0;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/tencent/gsdk/o;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 7
    const-string v1, "isBack"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gsdk/k0;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/gsdk/k0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p1, Lcom/tencent/gsdk/k0;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/tencent/gsdk/k0;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/gsdk/k0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/tencent/gsdk/k0;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    sget-object p0, Lcom/tencent/gsdk/m0;->c:Ljava/util/HashMap;

    if-eqz p0, :cond_2

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14
    sget-object p0, Lcom/tencent/gsdk/m0;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-object v0
.end method
