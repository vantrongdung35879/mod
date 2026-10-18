.class public Lcom/tencent/tme/live/chat/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/w0/g;

.field public final synthetic b:Lcom/tencent/tme/live/chat/g;


# direct methods
.method public static synthetic $r8$lambda$sz2Oo2tkhwXZYNcNaPWwbDeUV2g(Lcom/tencent/tme/live/chat/f;Lcom/tencent/tme/live/w0/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/chat/f;->a(Lcom/tencent/tme/live/w0/g;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/chat/g;Lcom/tencent/tme/live/w0/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/f;->b:Lcom/tencent/tme/live/chat/g;

    iput-object p2, p0, Lcom/tencent/tme/live/chat/f;->a:Lcom/tencent/tme/live/w0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/tencent/tme/live/w0/g;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p2

    iget p1, p1, Lcom/tencent/tme/live/w0/g;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/chat/f;->b:Lcom/tencent/tme/live/chat/g;

    iget-object v0, v0, Lcom/tencent/tme/live/chat/g;->d:Lcom/tencent/tme/live/chat/HotWordView;

    .line 1
    iget-boolean v0, v0, Lcom/tencent/tme/live/chat/HotWordView;->b:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "TVWordBarrageHotWordSend"

    invoke-virtual {p2, v0, p1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/b1/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/chat/f;->a:Lcom/tencent/tme/live/w0/g;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/g;->b:Ljava/lang/String;

    sget-object v1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeHotWord:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    invoke-virtual {v1}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tme/live/chat/f;->a:Lcom/tencent/tme/live/w0/g;

    iget v3, v2, Lcom/tencent/tme/live/w0/g;->a:I

    new-instance v4, Lcom/tencent/tme/live/chat/f$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/tencent/tme/live/chat/f$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/chat/f;Lcom/tencent/tme/live/w0/g;)V

    invoke-static {p1, v0, v1, v3, v4}, Lcom/tencent/tme/live/chat/h;->a(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/tme/live/chat/h$a;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/chat/f;->b:Lcom/tencent/tme/live/chat/g;

    iget-object p1, p1, Lcom/tencent/tme/live/chat/g;->d:Lcom/tencent/tme/live/chat/HotWordView;

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/chat/HotWordView;->f:Lcom/tencent/tme/live/chat/HotWordView$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/tencent/tme/live/chat/HotWordView$b;->a()V

    :cond_1
    return-void
.end method
