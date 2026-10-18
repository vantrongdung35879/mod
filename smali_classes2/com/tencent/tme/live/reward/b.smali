.class public Lcom/tencent/tme/live/reward/b;
.super Lcom/tencent/tme/live/d1/a;


# static fields
.field public static final synthetic k:I


# instance fields
.field public b:Lcom/tencent/tme/live/c1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c1/b<",
            "Lcom/tencent/tme/live/w0/l$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/tencent/tme/live/w0/l;

.field public final d:Lcom/tencent/tme/live/reward/RewardProgress;

.field public e:Landroid/widget/LinearLayout;

.field public final f:Landroid/widget/TextView;

.field public g:Lcom/tencent/tme/live/reward/RewardEnterView;

.field public h:Landroid/view/View;

.field public final i:Ljava/lang/Runnable;

.field public j:Lcom/tencent/tme/live/d1/b;


# direct methods
.method public static synthetic $r8$lambda$HpVq9EJaYFb2ygnupupVqgKd5II(Lcom/tencent/tme/live/reward/b;Lcom/tencent/tme/live/w0/l$a;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/reward/b;->a(Lcom/tencent/tme/live/w0/l$a;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g_RBwUxxYpsZwTVALxIzBzt3YnQ(Lcom/tencent/tme/live/reward/b;Lcom/tencent/tme/live/w0/l$a;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/reward/b;->b(Lcom/tencent/tme/live/w0/l$a;Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/reward/RewardEnterView;Lcom/tencent/tme/live/w0/l;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$style;->RewardDialog:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/tme/live/d1/a;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/tencent/tme/live/reward/b$d;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/reward/b$d;-><init>(Lcom/tencent/tme/live/reward/b;)V

    iput-object v0, p0, Lcom/tencent/tme/live/reward/b;->i:Ljava/lang/Runnable;

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_reward_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/d1/a;->a(ILandroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/tencent/tme/live/reward/b;->g:Lcom/tencent/tme/live/reward/RewardEnterView;

    iput-object p2, p0, Lcom/tencent/tme/live/reward/b;->c:Lcom/tencent/tme/live/w0/l;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->title_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/reward/b;->h:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/tencent/tme/live/w0/l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/b;->c()V

    :cond_1
    sget p1, Lcom/tencent/tme/live/biz/R$id;->img_closed:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tencent/tme/live/reward/b$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/reward/b$a;-><init>(Lcom/tencent/tme/live/reward/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/tencent/tme/live/biz/R$id;->dialog_bg:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p2, Lcom/tencent/tme/live/w0/l;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x44200000    # 640.0f

    invoke-static {v0, v1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Lcom/tencent/tme/live/reward/b$b;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/reward/b$b;-><init>(Lcom/tencent/tme/live/reward/b;)V

    invoke-static {p2, v0, v1, p1, v2}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;IILandroid/view/View;Lcom/tencent/tme/live/l0/c;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/b;->b()V

    sget p1, Lcom/tencent/tme/live/biz/R$id;->progress_bg:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget p2, Lcom/tencent/tme/live/biz/R$string;->reward_bg_reward_progress:I

    invoke-static {p2, p1}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    sget p1, Lcom/tencent/tme/live/biz/R$id;->progress:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/reward/RewardProgress;

    iput-object p1, p0, Lcom/tencent/tme/live/reward/b;->d:Lcom/tencent/tme/live/reward/RewardProgress;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->text_toast:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/reward/b;->f:Landroid/widget/TextView;

    sget p2, Lcom/tencent/tme/live/biz/R$string;->reward_bg_reward_receiver_success:I

    invoke-static {p2, p1}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    return-void
.end method

.method private a(Lcom/tencent/tme/live/w0/l$a;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tencent/tme/live/w0/l$a;->g:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_receive_success:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_receive_failed:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/reward/b;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_4

    if-nez p3, :cond_1

    iget-object p1, p1, Lcom/tencent/tme/live/w0/l$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, p3

    check-cast p1, Ljava/lang/String;

    :goto_1
    iget-object p2, p0, Lcom/tencent/tme/live/reward/b;->c:Lcom/tencent/tme/live/w0/l;

    .line 1
    iget-object p2, p2, Lcom/tencent/tme/live/w0/l;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/tme/live/w0/l$a;

    iget-object v0, p3, Lcom/tencent/tme/live/w0/l$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    iput p1, p3, Lcom/tencent/tme/live/w0/l$a;->c:I

    .line 2
    :cond_3
    iget-object p1, p0, Lcom/tencent/tme/live/reward/b;->b:Lcom/tencent/tme/live/c1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/c1/b;->b()V

    :cond_4
    iget-object p1, p0, Lcom/tencent/tme/live/reward/b;->c:Lcom/tencent/tme/live/w0/l;

    invoke-virtual {p1}, Lcom/tencent/tme/live/w0/l;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tencent/tme/live/reward/b;->g:Lcom/tencent/tme/live/reward/RewardEnterView;

    invoke-virtual {p1}, Lcom/tencent/tme/live/reward/RewardEnterView;->a()V

    :cond_5
    return-void
.end method

.method private synthetic b(Lcom/tencent/tme/live/w0/l$a;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/reward/b;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/tme/live/reward/b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/tme/live/reward/b$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/reward/b;Lcom/tencent/tme/live/w0/l$a;Ljava/lang/Integer;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tme/live/w0/l$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleReceiveEvent box="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardDialog"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/b1/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/tencent/tme/live/w0/l$a;->g:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Lcom/tencent/tme/live/w0/l$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/live/d1/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/s2/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/d1/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$string;->tme_unnetwork_receive:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/reward/b;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/tme/live/w0/l$a;->g:Z

    iget-object v0, p1, Lcom/tencent/tme/live/w0/l$a;->a:Ljava/lang/String;

    new-instance v1, Lcom/tencent/tme/live/reward/b$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/reward/b$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/reward/b;Lcom/tencent/tme/live/w0/l$a;)V

    invoke-static {v0, v1}, Lcom/tencent/tme/live/reward/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/reward/a$b;)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/reward/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tencent/tme/live/reward/b;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/reward/b;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/reward/b;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/reward/b;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/reward/b;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 3

    sget v0, Lcom/tencent/tme/live/biz/R$id;->box_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/tme/live/reward/b;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/tme/live/reward/b$c;

    iget-object v2, p0, Lcom/tencent/tme/live/reward/b;->c:Lcom/tencent/tme/live/w0/l;

    iget-object v2, v2, Lcom/tencent/tme/live/w0/l;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2, v0}, Lcom/tencent/tme/live/reward/b$c;-><init>(Lcom/tencent/tme/live/reward/b;Ljava/util/List;Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/tencent/tme/live/reward/b;->b:Lcom/tencent/tme/live/c1/b;

    return-void
.end method

.method public final c()V
    .locals 10

    iget-object v0, p0, Lcom/tencent/tme/live/reward/b;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/reward/b;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    new-instance v1, Landroid/graphics/LinearGradient;

    const-string v2, "#FFFEFD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v2, "#FFD29E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
