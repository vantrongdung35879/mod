.class public Lcom/tencent/tme/live/chat/e;
.super Lcom/tencent/tme/live/c1/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/c1/a<",
        "Lcom/tencent/tme/live/w0/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/tencent/tme/live/chat/HotEmojView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/HotEmojView;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/e;->d:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/tme/live/c1/a;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/c1/d;Ljava/lang/Object;)V
    .locals 7

    check-cast p2, Lcom/tencent/tme/live/w0/f;

    .line 1
    sget v0, Lcom/tencent/tme/live/biz/R$id;->hotemoj_context:I

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/c1/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/e;->d:Lcom/tencent/tme/live/chat/HotEmojView;

    iget-object v1, p2, Lcom/tencent/tme/live/w0/f;->c:Ljava/lang/String;

    sget v2, Lcom/tencent/tme/live/biz/R$string;->emoj_load_failed_def:I

    iget v3, p2, Lcom/tencent/tme/live/w0/f;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v1, v3}, Lcom/tencent/tme/live/y0/a;->a(ZI)V

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/tencent/tme/live/t0/c;

    invoke-direct {v6, v0, v4, v2, v3}, Lcom/tencent/tme/live/t0/c;-><init>(Lcom/tencent/tme/live/chat/HotEmojView;Ljava/lang/ref/Reference;II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v1

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;ZIIZLcom/tencent/tme/live/l0/c;)V

    .line 3
    :goto_0
    new-instance v0, Lcom/tencent/tme/live/chat/d;

    invoke-direct {v0, p0, p2}, Lcom/tencent/tme/live/chat/d;-><init>(Lcom/tencent/tme/live/chat/e;Lcom/tencent/tme/live/w0/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    return-void
.end method
