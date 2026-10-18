.class public Lcom/tencent/tme/live/s/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/s/b$b;,
        Lcom/tencent/tme/live/s/b$d;,
        Lcom/tencent/tme/live/s/b$c;,
        Lcom/tencent/tme/live/s/b$f;,
        Lcom/tencent/tme/live/s/b$e;,
        Lcom/tencent/tme/live/s/b$g;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/s/b$e;

.field public b:Lcom/tencent/tme/live/s/b$e;

.field public c:Lcom/tencent/tme/live/s/b$e;

.field public d:Lcom/tencent/tme/live/s/b$e;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/s/b;->a:Lcom/tencent/tme/live/s/b$e;

    iput-object v0, p0, Lcom/tencent/tme/live/s/b;->b:Lcom/tencent/tme/live/s/b$e;

    iput-object v0, p0, Lcom/tencent/tme/live/s/b;->c:Lcom/tencent/tme/live/s/b$e;

    iput-object v0, p0, Lcom/tencent/tme/live/s/b;->d:Lcom/tencent/tme/live/s/b$e;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/s/b;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/s/b;->a:Lcom/tencent/tme/live/s/b$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/tme/live/s/b$e;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/s/b;->b:Lcom/tencent/tme/live/s/b$e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/tencent/tme/live/s/b$e;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/s/b;->c:Lcom/tencent/tme/live/s/b$e;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/tencent/tme/live/s/b$e;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/s/b;->d:Lcom/tencent/tme/live/s/b$e;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/tencent/tme/live/s/b$e;->clear()V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/tencent/tme/live/s/b$b;

    .line 1
    invoke-direct {v0}, Lcom/tencent/tme/live/s/b$b;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/tme/live/s/b$c;

    .line 3
    invoke-direct {v0}, Lcom/tencent/tme/live/s/b$c;-><init>()V

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/tencent/tme/live/s/b;->a:Lcom/tencent/tme/live/s/b$e;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/tencent/tme/live/s/b$b;

    .line 5
    invoke-direct {p1}, Lcom/tencent/tme/live/s/b$b;-><init>()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Lcom/tencent/tme/live/s/b$c;

    .line 7
    invoke-direct {p1}, Lcom/tencent/tme/live/s/b$c;-><init>()V

    .line 8
    :goto_1
    iput-object p1, p0, Lcom/tencent/tme/live/s/b;->b:Lcom/tencent/tme/live/s/b$e;

    iget-object p1, p0, Lcom/tencent/tme/live/s/b;->c:Lcom/tencent/tme/live/s/b$e;

    if-nez p1, :cond_2

    new-instance p1, Lcom/tencent/tme/live/s/b$d;

    .line 9
    invoke-direct {p1}, Lcom/tencent/tme/live/s/b$d;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/tencent/tme/live/s/b;->c:Lcom/tencent/tme/live/s/b$e;

    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/s/b;->d:Lcom/tencent/tme/live/s/b$e;

    if-nez p1, :cond_3

    new-instance p1, Lcom/tencent/tme/live/s/b$b;

    .line 11
    invoke-direct {p1}, Lcom/tencent/tme/live/s/b$b;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tencent/tme/live/s/b;->d:Lcom/tencent/tme/live/s/b$e;

    :cond_3
    return-void
.end method
