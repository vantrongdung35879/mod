.class public Lcom/tencent/tme/live/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/l0/a;


# instance fields
.field public a:Lcom/tencent/tme/live/d/c;

.field public b:Landroid/content/Context;

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/tencent/tme/live/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/d/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tme/live/d/d;->c:Landroid/net/Uri;

    iput-object p3, p0, Lcom/tencent/tme/live/d/d;->a:Lcom/tencent/tme/live/d/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/tencent/tme/live/biz/R$id;->tag_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tag_image:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/d/d;->a:Lcom/tencent/tme/live/d/c;

    check-cast v0, Lcom/tencent/tme/live/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/tme/live/c/b;->a(ZLjava/lang/String;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget v0, Lcom/tencent/tme/live/biz/R$id;->tag_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/d/d;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/tme/live/d/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/tencent/tme/live/d/f;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/tme/live/c/a;

    iget-object v2, p0, Lcom/tencent/tme/live/d/d;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, p3, v1}, Lcom/tencent/tme/live/c/a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    move-object p3, p2

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_2
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/tencent/tme/live/c/c;->f()Lcom/tencent/tme/live/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tme/live/e0/d;->d()Lcom/tencent/tme/live/c0/b;

    move-result-object v1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Lcom/tencent/tme/live/c0/b;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/tencent/tme/live/c0/b;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 2
    :cond_6
    invoke-static {}, Lcom/tencent/tme/live/c/c;->f()Lcom/tencent/tme/live/c/c;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/tencent/tme/live/e0/d;->a()V

    iget-object v1, v1, Lcom/tencent/tme/live/e0/d;->a:Lcom/tencent/tme/live/e0/e;

    iget-object v1, v1, Lcom/tencent/tme/live/e0/e;->j:Lcom/tencent/tme/live/y/a;

    .line 4
    invoke-interface {v1, v0}, Lcom/tencent/tme/live/y/a;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_7
    if-eqz p3, :cond_8

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    .line 0
    :goto_2
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/tencent/tme/live/d/d;->a()Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/tencent/tme/live/d/d;->a:Lcom/tencent/tme/live/d/c;

    check-cast p3, Lcom/tencent/tme/live/c/b;

    const/4 v0, 0x1

    invoke-virtual {p3, v0, p1, p2}, Lcom/tencent/tme/live/c/b;->a(ZLjava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget p3, Lcom/tencent/tme/live/biz/R$id;->tag_image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    sget p3, Lcom/tencent/tme/live/biz/R$id;->tag_image:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d/d;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/tencent/tme/live/d/d;->a:Lcom/tencent/tme/live/d/c;

    check-cast p3, Lcom/tencent/tme/live/c/b;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p1, p2}, Lcom/tencent/tme/live/c/b;->a(ZLjava/lang/String;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/d/d;->a:Lcom/tencent/tme/live/d/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget p1, Lcom/tencent/tme/live/biz/R$id;->tag_image:I

    iget-object v0, p0, Lcom/tencent/tme/live/d/d;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
