.class public Lcom/tencent/tme/live/b1/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/v0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/b1/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/v0/g<",
        "Ljava/util/List<",
        "Lcom/tencent/tme/live/w0/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/b1/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/b1/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/b1/d$a;->a:Lcom/tencent/tme/live/b1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/b1/d$a;->a:Lcom/tencent/tme/live/b1/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/d;->a(Lcom/tencent/tme/live/b1/d;Z)Z

    const-string v0, "EmojResourceManager"

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/tencent/tme/live/b1/d$a;->a:Lcom/tencent/tme/live/b1/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    if-lez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/w0/f;

    .line 3
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/w0/f;

    iget v5, v2, Lcom/tencent/tme/live/w0/f;->a:I

    iget v4, v4, Lcom/tencent/tme/live/w0/f;->a:I

    if-ne v5, v4, :cond_6

    .line 4
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/w0/f;

    iget v5, v2, Lcom/tencent/tme/live/w0/f;->a:I

    iget v6, v4, Lcom/tencent/tme/live/w0/f;->a:I

    if-ne v5, v6, :cond_8

    iget v3, v2, Lcom/tencent/tme/live/w0/f;->b:I

    iget v5, v4, Lcom/tencent/tme/live/w0/f;->b:I

    if-ne v3, v5, :cond_9

    iget-object v2, v2, Lcom/tencent/tme/live/w0/f;->c:Ljava/lang/String;

    iget-object v3, v4, Lcom/tencent/tme/live/w0/f;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/b1/d$a;->a:Lcom/tencent/tme/live/b1/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iput-object v1, v0, Lcom/tencent/tme/live/b1/d;->d:Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/tencent/tme/live/b1/d$a;->a:Lcom/tencent/tme/live/b1/d;

    .line 8
    iget-object v0, v0, Lcom/tencent/tme/live/b1/d;->d:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$a;->a:Lcom/tencent/tme/live/b1/d;

    invoke-static {p1}, Lcom/tencent/tme/live/b1/d;->a(Lcom/tencent/tme/live/b1/d;)V

    goto :goto_4

    .line 5
    :cond_a
    :goto_2
    const-string p1, "has no changed"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 10
    :cond_b
    :goto_3
    const-string p1, "loadEmojResource hotEmojs null"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$a;->a:Lcom/tencent/tme/live/b1/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p1, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    .line 13
    iget-object p1, p0, Lcom/tencent/tme/live/b1/d$a;->a:Lcom/tencent/tme/live/b1/d;

    .line 14
    iget-object p1, p1, Lcom/tencent/tme/live/b1/d;->a:Ljava/util/HashMap;

    if-eqz p1, :cond_c

    .line 15
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_c
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/b1/d$a;->a:Lcom/tencent/tme/live/b1/d;

    .line 16
    iget-object v0, v0, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    .line 17
    iput-object v0, p1, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    .line 18
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object p1

    const-string v1, "emojListChanged"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
