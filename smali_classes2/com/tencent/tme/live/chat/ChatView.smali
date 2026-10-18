.class public Lcom/tencent/tme/live/chat/ChatView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public a:Landroid/widget/ListView;

.field public b:Lcom/tencent/tme/live/c1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c1/a<",
            "Lcom/tencent/tme/live/w0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/tencent/tme/live/b1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/b1/h<",
            "Lcom/tencent/tme/live/w0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/tencent/tme/live/b1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/b1/h<",
            "Lcom/tencent/tme/live/w0/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/View;

.field public h:Lcom/tencent/tme/live/chat/HotEmojView;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/view/View;

.field public l:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

.field public m:Landroid/view/View;

.field public final n:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$JJpjPAjt-WJOJZuJeFrH2HcdhBs(Lcom/tencent/tme/live/chat/ChatView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/chat/ChatView;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$Tp-d4h5heQ3fBSB6vhpaDNeAOyk(Lcom/tencent/tme/live/chat/ChatView;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/chat/ChatView;->b(Ljava/util/LinkedList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/tencent/tme/live/b1/h;

    const/16 v0, 0xc8

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/b1/h;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    new-instance p1, Lcom/tencent/tme/live/b1/h;

    const/16 v0, 0x3c

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/b1/h;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->d:Lcom/tencent/tme/live/b1/h;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/chat/ChatView;->e:Z

    new-instance p1, Lcom/tencent/tme/live/chat/ChatView$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/chat/ChatView$a;-><init>(Lcom/tencent/tme/live/chat/ChatView;)V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->n:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/tencent/tme/live/chat/ChatView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/tencent/tme/live/b1/h;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/b1/h;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    new-instance p1, Lcom/tencent/tme/live/b1/h;

    const/16 p2, 0x3c

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/b1/h;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->d:Lcom/tencent/tme/live/b1/h;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/chat/ChatView;->e:Z

    new-instance p1, Lcom/tencent/tme/live/chat/ChatView$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/chat/ChatView$a;-><init>(Lcom/tencent/tme/live/chat/ChatView;)V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->n:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/tencent/tme/live/chat/ChatView;->b()V

    return-void
.end method

.method private b(Ljava/util/LinkedList;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/chat/ChatView;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/b1/h;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->b:Lcom/tencent/tme/live/c1/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    add-int/lit8 v1, v1, -0x1

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->d:Lcom/tencent/tme/live/b1/h;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/b1/h;->a(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->d:Lcom/tencent/tme/live/b1/h;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-object v1, v0, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    if-lez v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->d:Lcom/tencent/tme/live/b1/h;

    iget-object v0, v0, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w0/a;

    iget-object v2, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/b1/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->b:Lcom/tencent/tme/live/c1/a;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    monitor-enter v1

    .line 3
    :try_start_1
    iget-object v2, v1, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->d:Lcom/tencent/tme/live/b1/h;

    invoke-virtual {v0}, Lcom/tencent/tme/live/b1/h;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/tme/live/chat/ChatView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/chat/ChatView$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/chat/ChatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/tencent/tme/live/w0/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/tme/live/chat/ChatView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/chat/ChatView$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/chat/ChatView;Ljava/util/LinkedList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_chat_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->listView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->chat_scroll_new_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->notice_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->txt_chat_notice:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->j:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->img_notice_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->iv_emoj:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->ll_emoj_entry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->switch_hotword_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->l:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setTouchable(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->hot_emoj_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/chat/HotEmojView;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->h:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/chat/HotEmojView;->setFullScreen(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->h:Lcom/tencent/tme/live/chat/HotEmojView;

    new-instance v1, Lcom/tencent/tme/live/chat/c;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/chat/c;-><init>(Lcom/tencent/tme/live/chat/ChatView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/chat/HotEmojView;->setCallback(Lcom/tencent/tme/live/chat/HotEmojView$c;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    invoke-static {}, Lcom/tencent/tme/live/b1/b;->b()Lcom/tencent/tme/live/b1/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tme/live/b1/b;->a()Lcom/tencent/tme/live/w0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/b1/h;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/tme/live/chat/b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    iget-object v2, v2, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    sget v3, Lcom/tencent/tme/live/biz/R$layout;->tme_item_chat_view:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/tencent/tme/live/chat/b;-><init>(Lcom/tencent/tme/live/chat/ChatView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->b:Lcom/tencent/tme/live/c1/a;

    iget-object v1, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/tencent/tme/live/b1/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->edit_text:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/tencent/tme/live/chat/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/chat/a;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/tencent/tme/live/chat/a;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/chat/ChatView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tme/live/chat/a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tme/live/chat/a;->a(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/tencent/tme/live/chat/ChatView$b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/chat/ChatView$b;-><init>(Lcom/tencent/tme/live/chat/ChatView;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    sget v0, Lcom/tencent/tme/live/biz/R$id;->chat_scroll_new_layout:I

    const/16 v1, 0x8

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/chat/ChatView;->e:Z

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    monitor-enter v1

    .line 1
    :try_start_0
    iget-object v2, v1, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    add-int/lit8 v2, v2, -0x1

    .line 2
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/String;

    const-string v1, "CheckLatestChanInfo"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_4
    sget v0, Lcom/tencent/tme/live/biz/R$id;->ll_emoj_entry:I

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->h:Lcom/tencent/tme/live/chat/HotEmojView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->h:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {p1}, Lcom/tencent/tme/live/chat/HotEmojView;->a()V

    goto :goto_1

    :cond_5
    sget-boolean p1, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {p1}, Lcom/tencent/tme/live/y0/a;->a(Z)V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->h:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {p1}, Lcom/tencent/tme/live/chat/HotEmojView;->b()V

    goto :goto_1

    :cond_6
    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_notice_close:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 p1, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/tencent/tme/live/chat/ChatView;->a:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p2

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-object v1, v0, Lcom/tencent/tme/live/b1/h;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    if-ge p2, v1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/tencent/tme/live/chat/ChatView;->e:Z

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/chat/ChatView;->a()V

    iput-boolean v0, p0, Lcom/tencent/tme/live/chat/ChatView;->e:Z

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->g:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    if-ne p2, p1, :cond_2

    .line 4
    iput-boolean p1, p0, Lcom/tencent/tme/live/chat/ChatView;->e:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->f:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/ChatView;->f:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$string;->tme_chat_edit_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
