.class public Lcom/tencent/tme/live/reward/operation/H5EntryView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/reward/operation/H5EntryView$a;,
        Lcom/tencent/tme/live/reward/operation/H5EntryView$b;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/tencent/tme/live/d1/a;

.field public d:Lcom/tencent/tme/live/w0/e;

.field public e:Z

.field public f:Lcom/tencent/tme/live/reward/operation/H5EntryView$b;

.field public g:Lcom/tencent/tme/live/reward/operation/H5EntryView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->e:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->e:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->e:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/reward/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/reward/a$a<",
            "Lcom/tencent/tme/live/w0/e;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/tencent/tme/live/reward/operation/H5EntryView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/reward/operation/H5EntryView$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/reward/a$a;)V

    const-string p0, "getOperationH5"

    invoke-static {p0, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/reward/a$a;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "result"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "getOperationH5"

    const/4 p1, 0x0

    .line 12
    const-string p2, "H5EntryView"

    invoke-static {p2, p0, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_0
    new-instance p1, Lcom/tencent/tme/live/w0/e;

    invoke-direct {p1}, Lcom/tencent/tme/live/w0/e;-><init>()V

    const-string p2, "entry_wording"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/tme/live/w0/e;->a:Ljava/lang/String;

    const-string p2, "entry_logo_url"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/tme/live/w0/e;->b:Ljava/lang/String;

    const-string p2, "jump_url"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/tme/live/w0/e;->c:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 14
    invoke-interface {p0, p1}, Lcom/tencent/tme/live/reward/a$a;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/tencent/tme/live/reward/operation/H5EntryView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {p1}, Lcom/tencent/tme/live/b1/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "bgTransparent"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->c:Lcom/tencent/tme/live/d1/a;

    if-nez v2, :cond_6

    if-eqz v0, :cond_5

    new-instance v2, Lcom/tencent/tme/live/d1/c;

    invoke-direct {v2, p1, p2}, Lcom/tencent/tme/live/d1/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/tencent/tme/live/d1/d;

    invoke-direct {v2, p1, p2}, Lcom/tencent/tme/live/d1/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    iput-object v2, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->c:Lcom/tencent/tme/live/d1/a;

    iget-object p1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->c:Lcom/tencent/tme/live/d1/a;

    new-instance p2, Lcom/tencent/tme/live/reward/operation/a;

    invoke-direct {p2, p0, v0}, Lcom/tencent/tme/live/reward/operation/a;-><init>(Lcom/tencent/tme/live/reward/operation/H5EntryView;Z)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_6
    iget-object p1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->c:Lcom/tencent/tme/live/d1/a;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->c:Lcom/tencent/tme/live/d1/a;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/tencent/tme/live/d1/a;->show()V

    :cond_8
    iget-object p0, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->f:Lcom/tencent/tme/live/reward/operation/H5EntryView$b;

    if-eqz p0, :cond_9

    check-cast p0, Lcom/tencent/tme/live/r0/d;

    if-nez v0, :cond_9

    .line 4
    iget-object p0, p0, Lcom/tencent/tme/live/r0/d;->a:Lcom/tencent/tme/live/r0/c;

    .line 5
    iput-boolean v1, p0, Lcom/tencent/tme/live/w2/b;->c:Z

    .line 6
    invoke-virtual {p0}, Lcom/tencent/tme/live/r0/c;->e()V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->g:Lcom/tencent/tme/live/reward/operation/H5EntryView$a;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/tme/live/r0/e;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/r0/e;->a:Lcom/tencent/tme/live/r0/c;

    .line 8
    iget-object v0, v0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tmes_layout_h5_entry:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->b:Landroid/widget/TextView;

    .line 9
    new-instance p1, Lcom/tencent/tme/live/v0/c;

    new-instance v0, Lcom/tencent/tme/live/r1/b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/r1/b;-><init>(Lcom/tencent/tme/live/reward/operation/H5EntryView;)V

    const-wide/16 v1, 0x320

    .line 10
    invoke-direct {p1, v0, v1, v2}, Lcom/tencent/tme/live/v0/c;-><init>(Landroid/view/View$OnClickListener;J)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->d:Lcom/tencent/tme/live/w0/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/w0/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a()V

    const-string v0, "H5EntryView"

    const-string v1, "webUrl is null"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1
    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v2

    new-instance v0, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 2
    new-instance v4, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v4, v0}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 3
    new-instance v0, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 4
    new-instance v5, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v5, v0}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 5
    new-instance v0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 6
    new-instance v6, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v6, v0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 7
    new-instance v0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 8
    new-instance v7, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v7, v0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 9
    const-string v3, "h5linkshow_aov"

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    .line 10
    iget-object v0, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->d:Lcom/tencent/tme/live/w0/e;

    iget-object v1, v1, Lcom/tencent/tme/live/w0/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/tencent/tme/live/biz/R$string;->reward_bg_reward_enter_text:I

    iget-object v1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->d:Lcom/tencent/tme/live/w0/e;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->g:Lcom/tencent/tme/live/reward/operation/H5EntryView$a;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/tencent/tme/live/r0/e;

    .line 11
    iget-object v0, v0, Lcom/tencent/tme/live/r0/e;->a:Lcom/tencent/tme/live/r0/c;

    .line 12
    iget-object v0, v0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    :cond_2
    return-void
.end method

.method public setOnEntryStateCallback(Lcom/tencent/tme/live/reward/operation/H5EntryView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->g:Lcom/tencent/tme/live/reward/operation/H5EntryView$a;

    return-void
.end method

.method public setShowStateCallback(Lcom/tencent/tme/live/reward/operation/H5EntryView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->f:Lcom/tencent/tme/live/reward/operation/H5EntryView$b;

    return-void
.end method
