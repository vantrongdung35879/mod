.class public Lcom/tencent/tme/live/t0/c;
.super Lcom/tencent/tme/live/l0/c;


# instance fields
.field public final synthetic a:Ljava/lang/ref/Reference;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/tencent/tme/live/chat/HotEmojView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/HotEmojView;Ljava/lang/ref/Reference;II)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/t0/c;->d:Lcom/tencent/tme/live/chat/HotEmojView;

    iput-object p2, p0, Lcom/tencent/tme/live/t0/c;->a:Ljava/lang/ref/Reference;

    iput p3, p0, Lcom/tencent/tme/live/t0/c;->b:I

    iput p4, p0, Lcom/tencent/tme/live/t0/c;->c:I

    invoke-direct {p0}, Lcom/tencent/tme/live/l0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Lcom/tencent/tme/live/f0/c;)V
    .locals 4

    iget-object p1, p0, Lcom/tencent/tme/live/t0/c;->a:Ljava/lang/ref/Reference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget p3, p0, Lcom/tencent/tme/live/t0/c;->b:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Lcom/tencent/tme/live/t0/c;->d:Lcom/tencent/tme/live/chat/HotEmojView;

    .line 1
    iget p3, p3, Lcom/tencent/tme/live/chat/HotEmojView;->i:I

    .line 2
    iget v0, p0, Lcom/tencent/tme/live/t0/c;->c:I

    if-ne p3, v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/tencent/tme/live/t0/c;->d:Lcom/tencent/tme/live/chat/HotEmojView;

    .line 3
    iget-wide v2, p3, Lcom/tencent/tme/live/chat/HotEmojView;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p3, v0, v2

    if-gez p3, :cond_4

    return-void

    .line 4
    :cond_4
    iget-object p3, p0, Lcom/tencent/tme/live/t0/c;->d:Lcom/tencent/tme/live/chat/HotEmojView;

    iget v0, p0, Lcom/tencent/tme/live/t0/c;->c:I

    .line 5
    iput v0, p3, Lcom/tencent/tme/live/chat/HotEmojView;->i:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    iput-wide v0, p3, Lcom/tencent/tme/live/chat/HotEmojView;->j:J

    .line 8
    sget-boolean p3, Lcom/tencent/tme/live/v0/f;->g:Z

    iget v0, p0, Lcom/tencent/tme/live/t0/c;->c:I

    invoke-static {p3, v0}, Lcom/tencent/tme/live/y0/a;->a(ZI)V

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    return-void
.end method
