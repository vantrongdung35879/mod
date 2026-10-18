.class public Lcom/tencent/tme/live/b1/d$b$a;
.super Lcom/tencent/tme/live/l0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/b1/d$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/b1/d$b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/b1/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    invoke-direct {p0}, Lcom/tencent/tme/live/l0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onLoadingCancelled:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EmojResourceManager"

    invoke-static {p2, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    iget-object p1, p1, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    invoke-static {p1}, Lcom/tencent/tme/live/b1/d;->a(Lcom/tencent/tme/live/b1/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    iget-object p2, p2, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    .line 1
    iget-object v0, p2, Lcom/tencent/tme/live/b1/d;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iput-object v0, p2, Lcom/tencent/tme/live/b1/d;->a:Ljava/util/HashMap;

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    iget-object p2, p2, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    .line 5
    iget-object p2, p2, Lcom/tencent/tme/live/b1/d;->a:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    iget-object p1, p1, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    .line 7
    iget-object p2, p1, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    if-nez p2, :cond_1

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p2, p1, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    iget-object p2, p1, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    .line 11
    iget-object p2, p2, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    .line 12
    iget-object p1, p1, Lcom/tencent/tme/live/b1/d$b;->a:Lcom/tencent/tme/live/w0/f;

    .line 13
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    iget-object p1, p1, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    invoke-static {p1}, Lcom/tencent/tme/live/b1/d;->a(Lcom/tencent/tme/live/b1/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onLoadingFailed:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EmojResourceManager"

    invoke-static {p2, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    iget-object p1, p1, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    .line 14
    iget-object p2, p1, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    if-nez p2, :cond_0

    .line 15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p2, p1, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    iget-object p2, p1, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    .line 18
    iget-object p2, p2, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    .line 19
    iget-object p1, p1, Lcom/tencent/tme/live/b1/d$b;->a:Lcom/tencent/tme/live/w0/f;

    .line 20
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$b$a;->a:Lcom/tencent/tme/live/b1/d$b;

    iget-object p1, p1, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    invoke-static {p1}, Lcom/tencent/tme/live/b1/d;->a(Lcom/tencent/tme/live/b1/d;)V

    return-void
.end method
