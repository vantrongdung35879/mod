.class public Lcom/tencent/tme/live/chat/b;
.super Lcom/tencent/tme/live/c1/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/c1/a<",
        "Lcom/tencent/tme/live/w0/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/ChatView;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/tme/live/c1/a;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/c1/d;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/tencent/tme/live/w0/a;

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p2, Lcom/tencent/tme/live/w0/a;->a:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/tencent/tme/live/biz/R$id;->chat_context:I

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/c1/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p2, Lcom/tencent/tme/live/w0/a;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p2, Lcom/tencent/tme/live/w0/a;->b:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
