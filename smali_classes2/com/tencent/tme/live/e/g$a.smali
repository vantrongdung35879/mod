.class public Lcom/tencent/tme/live/e/g$a;
.super Lcom/tencent/tme/live/h/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/g;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/g$a;->a:Lcom/tencent/tme/live/e/g;

    invoke-direct {p0}, Lcom/tencent/tme/live/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/e2/j;)V
    .locals 1

    const-string p1, "MinaThread"

    const-string v0, "serviceDeactivated"

    invoke-static {p1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/f2/j;)V
    .locals 2

    const-string p1, "MinaThread"

    const-string v0, "sessionCreated"

    invoke-static {p1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e/g$a;->a:Lcom/tencent/tme/live/e/g;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/e/g;->g:Lcom/tencent/tme/live/j/c;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/tme/live/f/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/f/b;-><init>(I)V

    check-cast p1, Lcom/tencent/tme/live/e/f$b;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/e/f$b;->b(Lcom/tencent/tme/live/f/b;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/tencent/tme/live/e2/j;)V
    .locals 1

    const-string p1, "MinaThread"

    const-string v0, "serviceActivated"

    invoke-static {p1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/tencent/tme/live/f2/j;)V
    .locals 2

    const-string p1, "MinaThread"

    const-string v0, "sessionDestroyed"

    invoke-static {p1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e/g$a;->a:Lcom/tencent/tme/live/e/g;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/e/g;->g:Lcom/tencent/tme/live/j/c;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/tme/live/f/b;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/f/b;-><init>(I)V

    check-cast p1, Lcom/tencent/tme/live/e/f$b;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/e/f$b;->b(Lcom/tencent/tme/live/f/b;)V

    :cond_0
    return-void
.end method
