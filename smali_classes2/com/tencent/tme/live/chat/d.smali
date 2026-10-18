.class public Lcom/tencent/tme/live/chat/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/w0/f;

.field public final synthetic b:Lcom/tencent/tme/live/chat/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/e;Lcom/tencent/tme/live/w0/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/d;->b:Lcom/tencent/tme/live/chat/e;

    iput-object p2, p0, Lcom/tencent/tme/live/chat/d;->a:Lcom/tencent/tme/live/w0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/b1/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeHotWord:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tme/live/chat/d;->a:Lcom/tencent/tme/live/w0/f;

    iget v1, v1, Lcom/tencent/tme/live/w0/f;->a:I

    new-instance v2, Lcom/tencent/tme/live/chat/d$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/tencent/tme/live/chat/d$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/tme/live/chat/h;->a(Landroid/content/Context;IILcom/tencent/tme/live/chat/h$a;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/chat/d;->a:Lcom/tencent/tme/live/w0/f;

    iget p1, p1, Lcom/tencent/tme/live/w0/f;->a:I

    sget-boolean v0, Lcom/tencent/tme/live/v0/f;->g:Z

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v1

    new-instance v2, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 2
    new-instance v3, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v3, v2}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 3
    new-instance v2, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 4
    new-instance v4, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v4, v2}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 5
    new-instance v2, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 6
    iput p1, v2, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 7
    iput v0, v2, Lcom/tencent/tme/live/z0/b$a;->b:I

    .line 8
    new-instance v5, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v5, v2}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 9
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 10
    new-instance v6, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v6, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 11
    const-string v2, "EmojiSend_aov"

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    .line 12
    iget-object p1, p0, Lcom/tencent/tme/live/chat/d;->b:Lcom/tencent/tme/live/chat/e;

    iget-object p1, p1, Lcom/tencent/tme/live/chat/e;->d:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {p1}, Lcom/tencent/tme/live/chat/HotEmojView;->a()V

    return-void
.end method
