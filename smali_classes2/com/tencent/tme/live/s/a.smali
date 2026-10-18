.class public Lcom/tencent/tme/live/s/a;
.super Lcom/tencent/tme/live/r/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/s/a$b;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/n/d;

.field public final b:Lcom/tencent/tme/live/o/d;

.field public c:Lcom/tencent/tme/live/s/b$g;

.field public final d:Lcom/tencent/tme/live/s/b$g;

.field public final e:Lcom/tencent/tme/live/s/b;

.field public f:Lcom/tencent/tme/live/n/i;

.field public g:Lcom/tencent/tme/live/r/a$a;

.field public h:Lcom/tencent/tme/live/s/a$b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/live/r/b;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/s/a$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/s/a$a;-><init>(Lcom/tencent/tme/live/s/a;)V

    iput-object v0, p0, Lcom/tencent/tme/live/s/a;->d:Lcom/tencent/tme/live/s/b$g;

    new-instance v0, Lcom/tencent/tme/live/s/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tme/live/s/a$b;-><init>(Lcom/tencent/tme/live/s/a;Lcom/tencent/tme/live/s/a$a;)V

    iput-object v0, p0, Lcom/tencent/tme/live/s/a;->h:Lcom/tencent/tme/live/s/a$b;

    iput-object p1, p0, Lcom/tencent/tme/live/s/a;->b:Lcom/tencent/tme/live/o/d;

    new-instance v0, Lcom/tencent/tme/live/s/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/o/d;->b()Z

    move-result p1

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/s/b;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/tme/live/s/a;->e:Lcom/tencent/tme/live/s/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/s/a;->f:Lcom/tencent/tme/live/n/i;

    return-void
.end method

.method public a(Lcom/tencent/tme/live/r/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/s/a;->g:Lcom/tencent/tme/live/r/a$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/s/a;->d:Lcom/tencent/tme/live/s/b$g;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tencent/tme/live/s/a;->c:Lcom/tencent/tme/live/s/b$g;

    return-void
.end method
