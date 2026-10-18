.class public Lcom/tencent/tme/live/chat/HotWordView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/chat/HotWordView$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

.field public e:Landroid/widget/ListView;

.field public f:Lcom/tencent/tme/live/chat/HotWordView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/tme/live/chat/HotWordView;->a:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tencent/tme/live/chat/HotWordView;->b:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/chat/HotWordView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/tme/live/chat/HotWordView;->c:Landroid/content/Context;

    new-instance p1, Lcom/tencent/tme/live/chat/HotWordView$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/chat/HotWordView$a;-><init>(Lcom/tencent/tme/live/chat/HotWordView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_chat_hotword_list:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/HotWordView;->d:Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->list_word:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/tencent/tme/live/chat/HotWordView;->e:Landroid/widget/ListView;

    .line 1
    new-instance p1, Lcom/tencent/tme/live/chat/g;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/chat/HotWordView;->a:Ljava/util/List;

    sget v2, Lcom/tencent/tme/live/biz/R$layout;->tme_item_hotword_view:I

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/tencent/tme/live/chat/g;-><init>(Lcom/tencent/tme/live/chat/HotWordView;Landroid/content/Context;Ljava/util/List;I)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/HotWordView;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setCallback(Lcom/tencent/tme/live/chat/HotWordView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/HotWordView;->f:Lcom/tencent/tme/live/chat/HotWordView$b;

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/tencent/tme/live/chat/HotWordView;->b:Z

    invoke-virtual/range {p0 .. p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v2, v0, Lcom/tencent/tme/live/chat/HotWordView;->e:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, v0, Lcom/tencent/tme/live/chat/HotWordView;->d:Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

    iget-object v1, v0, Lcom/tencent/tme/live/chat/HotWordView;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_setting_start_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v1, v0, Lcom/tencent/tme/live/chat/HotWordView;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_setting_end_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v8, 0x3f333333    # 0.7f

    const/4 v9, 0x0

    const v6, 0x3e99999a    # 0.3f

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->a(IIFFFF)V

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lcom/tencent/tme/live/chat/HotWordView;->d:Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

    iget-object v1, v0, Lcom/tencent/tme/live/chat/HotWordView;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$color;->tme_setting_half_start_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    iget-object v1, v0, Lcom/tencent/tme/live/chat/HotWordView;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$color;->tme_setting_half_end_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->a(IIFFFF)V

    const/16 v1, 0x13

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    return-void
.end method
