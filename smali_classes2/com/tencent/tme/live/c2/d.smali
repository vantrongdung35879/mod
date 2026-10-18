.class public Lcom/tencent/tme/live/c2/d;
.super Lcom/tencent/tme/live/c2/e;

# interfaces
.implements Lcom/tencent/tme/live/c2/b;


# static fields
.field public static final h:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/c2/d;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/c2/e;-><init>(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)Lcom/tencent/tme/live/c2/b;
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/c2/d;

    invoke-direct {v0}, Lcom/tencent/tme/live/c2/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/c2/d;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/c2/b;
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/c2/b;

    return-object v0
.end method

.method public a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/tme/live/c2/e;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/c2/b;

    return-object p1
.end method

.method public a(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "exception"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/live/c2/e;->h()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/tencent/tme/live/c2/d;->h:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/tencent/tme/live/c2/h;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/c2/b;

    return-object v0
.end method

.method public getSession()Lcom/tencent/tme/live/f2/j;
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/c2/e;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/tme/live/f2/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/tme/live/f2/j;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Throwable;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Lcom/tencent/tme/live/y1/a;

    const-string v2, "Failed to get the session."

    invoke-direct {v1, v2}, Lcom/tencent/tme/live/y1/a;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/y1/a;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method
