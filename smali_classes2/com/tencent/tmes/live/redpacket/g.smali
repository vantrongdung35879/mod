.class public Lcom/tencent/tmes/live/redpacket/g;
.super Lcom/tencent/tme/live/d1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmes/live/redpacket/g$d;
    }
.end annotation


# static fields
.field public static l:I = 0x5


# instance fields
.field public final b:Lcom/tencent/tme/live/w0/j;

.field public c:Landroid/view/ViewGroup;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/y2/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Landroid/view/View;

.field public h:Landroid/widget/TextView;

.field public i:Z

.field public j:Z

.field public k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/live/w0/j;Z)V
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$style;->Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/live/d1/a;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tmes/live/redpacket/g;->f:I

    iput-boolean p1, p0, Lcom/tencent/tmes/live/redpacket/g;->i:Z

    iput-boolean p1, p0, Lcom/tencent/tmes/live/redpacket/g;->j:Z

    new-instance v0, Lcom/tencent/tmes/live/redpacket/g$c;

    invoke-direct {v0, p0}, Lcom/tencent/tmes/live/redpacket/g$c;-><init>(Lcom/tencent/tmes/live/redpacket/g;)V

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->k:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    iput-boolean p3, p0, Lcom/tencent/tmes/live/redpacket/g;->i:Z

    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/g;->b()V

    sget p2, Lcom/tencent/tme/live/biz/R$layout;->tmes_redpacket_dialog:I

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/tencent/tme/live/d1/a;->a(ILandroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget p3, Lcom/tencent/tme/live/biz/R$style;->dialogAnimation:I

    invoke-virtual {p2, p3}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/g;->c()V

    iput-boolean p1, p0, Lcom/tencent/tmes/live/redpacket/g;->j:Z

    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/g;->e()V

    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/g;->d()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/tencent/tme/live/y2/d;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->e:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/y2/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/g;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$color;->tme_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/tmes/live/redpacket/g;->b(I)Lcom/tencent/tme/live/w0/j$a;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/tmes/live/redpacket/g;->a(I)Lcom/tencent/tme/live/y2/d;

    move-result-object v3

    if-nez p2, :cond_4

    .line 59
    iget v4, v0, Lcom/tencent/tmes/live/redpacket/g;->f:I

    invoke-virtual {v0, v4}, Lcom/tencent/tmes/live/redpacket/g;->b(I)Lcom/tencent/tme/live/w0/j$a;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/tmes/live/redpacket/g;->b(I)Lcom/tencent/tme/live/w0/j$a;

    move-result-object v5

    iget-object v6, v0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    iget v6, v6, Lcom/tencent/tme/live/w0/j;->a:I

    iget v7, v4, Lcom/tencent/tme/live/w0/j$a;->i:I

    iget v8, v5, Lcom/tencent/tme/live/w0/j$a;->i:I

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    sget-boolean v10, Lcom/tencent/tme/live/v0/f;->g:Z

    iget v4, v4, Lcom/tencent/tme/live/w0/j$a;->j:I

    iget v5, v5, Lcom/tencent/tme/live/w0/j$a;->j:I

    .line 60
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v11

    new-instance v12, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v12}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 61
    new-instance v13, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v13, v12}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 62
    new-instance v12, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v12}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    iput-object v6, v12, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 64
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    iput-object v6, v12, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 66
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 67
    iput-object v6, v12, Lcom/tencent/tme/live/z0/c$a;->c:Ljava/lang/String;

    .line 68
    iput-object v9, v12, Lcom/tencent/tme/live/z0/c$a;->d:Ljava/lang/String;

    .line 69
    new-instance v14, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v14, v12}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 70
    new-instance v6, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v6}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    if-eqz v10, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    .line 71
    :goto_0
    iput v7, v6, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 72
    iput v4, v6, Lcom/tencent/tme/live/z0/b$a;->b:I

    .line 73
    iput v5, v6, Lcom/tencent/tme/live/z0/b$a;->c:I

    .line 74
    new-instance v15, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v15, v6}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 75
    new-instance v4, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {v4}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 76
    new-instance v5, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v5, v4}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 77
    const-string v12, "RedPacketSwitchClick_aov"

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    .line 78
    :cond_4
    :goto_1
    iget v4, v0, Lcom/tencent/tmes/live/redpacket/g;->f:I

    iput v1, v0, Lcom/tencent/tmes/live/redpacket/g;->f:I

    iget-object v5, v0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    invoke-interface {v3, v5, v2}, Lcom/tencent/tme/live/y2/d;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V

    check-cast v3, Landroid/view/View;

    iget-object v2, v0, Lcom/tencent/tmes/live/redpacket/g;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    iget-object v2, v0, Lcom/tencent/tmes/live/redpacket/g;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, v0, Lcom/tencent/tmes/live/redpacket/g;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    if-nez p2, :cond_6

    iget-object v2, v0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, v4}, Lcom/tencent/tmes/live/redpacket/g;->a(Landroid/view/View;I)V

    iget-object v2, v0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tmes/live/redpacket/g;->a(Landroid/view/View;I)V

    :cond_6
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "TransparentWebDialog"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "loadSubPacketUI failed, subView is null, index:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    invoke-static {v1, p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "hide subpacket, index:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/tencent/tmes/live/redpacket/g;->b(I)Lcom/tencent/tme/live/w0/j$a;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "loadSubPacketUI failed, subPacketBean is null, index:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v1, p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/tencent/tmes/live/redpacket/g$d;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmes/live/redpacket/g$d;

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/tencent/tmes/live/redpacket/g$d;

    .line 5
    invoke-direct {v3, p0}, Lcom/tencent/tmes/live/redpacket/g$d;-><init>(Lcom/tencent/tmes/live/redpacket/g;)V

    .line 6
    sget v4, Lcom/tencent/tme/live/biz/R$id;->tv_title:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->a:Landroid/widget/TextView;

    sget v4, Lcom/tencent/tme/live/biz/R$id;->line_up:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->b:Landroid/view/View;

    sget v4, Lcom/tencent/tme/live/biz/R$id;->line_down:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->c:Landroid/view/View;

    sget v4, Lcom/tencent/tme/live/biz/R$id;->dot0:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 7
    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->d:Landroid/view/View;

    .line 8
    sget v4, Lcom/tencent/tme/live/biz/R$id;->iv_icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 9
    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->e:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 10
    sget v4, Lcom/tencent/tme/live/biz/R$id;->iv_select_arrow:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 11
    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 12
    iget-object v4, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    iget-object v4, v4, Lcom/tencent/tme/live/w0/j;->b:Ljava/lang/String;

    .line 13
    iget-object v5, v3, Lcom/tencent/tmes/live/redpacket/g$d;->e:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 14
    sget v6, Lcom/tencent/tme/live/biz/R$string;->transparent_entrance_icon_defalut:I

    invoke-static {v4, v5, v6}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;I)V

    sget v4, Lcom/tencent/tme/live/biz/R$id;->fl_iv_icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 15
    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->g:Landroid/view/View;

    .line 16
    sget v4, Lcom/tencent/tme/live/biz/R$id;->mask_select_finish:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 17
    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->h:Landroid/view/View;

    .line 18
    sget v4, Lcom/tencent/tme/live/biz/R$id;->mask_select_unfinish:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 19
    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->i:Landroid/view/View;

    .line 20
    sget v4, Lcom/tencent/tme/live/biz/R$id;->mask_unselect_finish:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 21
    iput-object v4, v3, Lcom/tencent/tmes/live/redpacket/g$d;->j:Landroid/view/View;

    :goto_0
    if-nez v3, :cond_4

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "loadSubPacketUI failed, viewHolder is null, index:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v1, p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 24
    :cond_4
    iget v0, v2, Lcom/tencent/tme/live/w0/j$a;->a:I

    const/4 v1, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    sget v7, Lcom/tencent/tme/live/biz/R$string;->grabing_packet:I

    invoke-static {v0, v7}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    iput v4, v2, Lcom/tencent/tme/live/w0/j$a;->j:I

    goto :goto_2

    :cond_5
    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    sget v7, Lcom/tencent/tme/live/biz/R$string;->grabbed_packet:I

    invoke-static {v0, v7}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    iput v5, v2, Lcom/tencent/tme/live/w0/j$a;->j:I

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    sget v7, Lcom/tencent/tme/live/biz/R$string;->grabb_finish_packet:I

    invoke-static {v0, v7}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    iput v1, v2, Lcom/tencent/tme/live/w0/j$a;->j:I

    goto :goto_2

    :cond_7
    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tmes/live/redpacket/g;->b(I)Lcom/tencent/tme/live/w0/j$a;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-eq v0, v6, :cond_9

    if-eq v0, v4, :cond_9

    if-ne v0, v5, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    sget v7, Lcom/tencent/tme/live/biz/R$string;->redpacket_send_waitting:I

    invoke-static {v0, v7}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x5

    iput v7, v2, Lcom/tencent/tme/live/w0/j$a;->j:I

    goto :goto_2

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/j$a;)Ljava/lang/String;

    move-result-object v0

    iput v6, v2, Lcom/tencent/tme/live/w0/j$a;->j:I

    goto :goto_2

    :cond_a
    const-string v0, ""

    .line 25
    :goto_2
    iget-object v7, v3, Lcom/tencent/tmes/live/redpacket/g$d;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/tencent/tmes/live/redpacket/g;->c:Landroid/view/ViewGroup;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    sget v8, Lcom/tencent/tme/live/biz/R$string;->grabing_packet:I

    invoke-static {v7, v8}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->a:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/tmes/live/redpacket/g;->c:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/tencent/tme/live/biz/R$color;->tme_redpacket_grabbing:I

    goto :goto_3

    :cond_b
    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->a:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/tmes/live/redpacket/g;->c:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/tencent/tme/live/biz/R$color;->tme_white:I

    :goto_3
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    :cond_c
    iget v0, v2, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-eq v0, v4, :cond_e

    if-eq v0, v5, :cond_e

    if-ne v0, v6, :cond_d

    goto :goto_4

    :cond_d
    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->b:Landroid/view/View;

    sget v7, Lcom/tencent/tme/live/biz/R$color;->packet_un_light:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->c:Landroid/view/View;

    sget v7, Lcom/tencent/tme/live/biz/R$color;->packet_un_light:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    sget v0, Lcom/tencent/tme/live/biz/R$string;->redpacket_progress_unselect_arrow:I

    goto :goto_5

    :cond_e
    :goto_4
    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->b:Landroid/view/View;

    sget v7, Lcom/tencent/tme/live/biz/R$color;->packet_yellow:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->c:Landroid/view/View;

    sget v7, Lcom/tencent/tme/live/biz/R$color;->packet_yellow:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    sget v0, Lcom/tencent/tme/live/biz/R$string;->redpacket_progress_select_arrow:I

    .line 27
    :goto_5
    iget-object v7, v3, Lcom/tencent/tmes/live/redpacket/g$d;->d:Landroid/view/View;

    .line 28
    invoke-static {v0, v7}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->b:Landroid/view/View;

    const/4 v7, 0x0

    if-nez p2, :cond_f

    const/4 v8, 0x4

    goto :goto_6

    :cond_f
    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->c:Landroid/view/View;

    sget v8, Lcom/tencent/tmes/live/redpacket/g;->l:I

    sub-int/2addr v8, v6

    if-ne p2, v8, :cond_10

    const/4 v8, 0x4

    goto :goto_7

    :cond_10
    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget v0, p0, Lcom/tencent/tmes/live/redpacket/g;->f:I

    if-ne p2, v0, :cond_11

    const/4 p2, 0x1

    goto :goto_8

    :cond_11
    const/4 p2, 0x0

    .line 30
    :goto_8
    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    if-eqz p2, :cond_12

    const/4 v1, 0x0

    .line 31
    :cond_12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, v2, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-eq v0, v4, :cond_14

    if-ne v0, v5, :cond_13

    goto :goto_9

    :cond_13
    const/4 v6, 0x0

    :cond_14
    :goto_9
    const/16 v0, 0x8

    if-eqz p2, :cond_15

    if-nez v6, :cond_15

    .line 32
    iget-object v1, v3, Lcom/tencent/tmes/live/redpacket/g$d;->h:Landroid/view/View;

    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v1, v3, Lcom/tencent/tmes/live/redpacket/g$d;->i:Landroid/view/View;

    .line 35
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_15
    if-eqz p2, :cond_16

    if-eqz v6, :cond_16

    .line 36
    iget-object v1, v3, Lcom/tencent/tmes/live/redpacket/g$d;->h:Landroid/view/View;

    .line 37
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v1, v3, Lcom/tencent/tmes/live/redpacket/g$d;->i:Landroid/view/View;

    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_16
    if-nez p2, :cond_17

    if-eqz v6, :cond_17

    .line 40
    iget-object v1, v3, Lcom/tencent/tmes/live/redpacket/g$d;->h:Landroid/view/View;

    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v1, v3, Lcom/tencent/tmes/live/redpacket/g$d;->i:Landroid/view/View;

    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->j:Landroid/view/View;

    .line 45
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 46
    :cond_17
    iget-object v1, v3, Lcom/tencent/tmes/live/redpacket/g$d;->h:Landroid/view/View;

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v1, v3, Lcom/tencent/tmes/live/redpacket/g$d;->i:Landroid/view/View;

    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_a
    iget-object v1, v3, Lcom/tencent/tmes/live/redpacket/g$d;->j:Landroid/view/View;

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_b
    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->g:Landroid/view/View;

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 54
    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->g:Landroid/view/View;

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_18

    const v5, 0x3f8ccccd    # 1.1f

    goto :goto_c

    :cond_18
    const/high16 v5, 0x3f800000    # 1.0f

    .line 55
    :goto_c
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 56
    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->g:Landroid/view/View;

    if-eqz p2, :cond_19

    goto :goto_d

    :cond_19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 57
    :goto_d
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v3, Lcom/tencent/tmes/live/redpacket/g$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1b

    iget-object v2, v3, Lcom/tencent/tmes/live/redpacket/g$d;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_1a

    const/high16 v1, 0x40000000    # 2.0f

    :cond_1a
    invoke-static {v2, v1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 58
    :cond_1b
    iget-object p2, v3, Lcom/tencent/tmes/live/redpacket/g$d;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    if-lez p2, :cond_1c

    iget-object p2, v3, Lcom/tencent/tmes/live/redpacket/g$d;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p1, v1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/tencent/tme/live/b1/p;->a(Landroid/widget/TextView;II)V

    :cond_1c
    return-void
.end method

.method public final b(I)Lcom/tencent/tme/live/w0/j$a;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w0/j$a;

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/tmes/live/redpacket/g;->l:I

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/tencent/tmes/live/redpacket/g;->l:I

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    sget v0, Lcom/tencent/tme/live/biz/R$id;->fl_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$id;->fl_sub_packets:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->tv_send_interval:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/tmes/live/redpacket/g;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->sub0:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->sub1:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->sub2:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->sub3:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->sub4:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v2, v3, :cond_1

    sget v3, Lcom/tencent/tmes/live/redpacket/g;->l:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v5, p0, Lcom/tencent/tmes/live/redpacket/g;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/tencent/tmes/live/redpacket/g$a;

    invoke-direct {v2, p0}, Lcom/tencent/tmes/live/redpacket/g$a;-><init>(Lcom/tencent/tmes/live/redpacket/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->fl_packet:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->c:Landroid/view/ViewGroup;

    .line 1
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/w0/j$a;

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    iget v5, v3, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-ne v5, v2, :cond_8

    goto :goto_4

    :cond_8
    if-nez v5, :cond_6

    :goto_4
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_6

    :cond_9
    :goto_5
    sget v0, Lcom/tencent/tmes/live/redpacket/g;->l:I

    sub-int/2addr v0, v2

    .line 2
    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/tencent/tmes/live/redpacket/g;->a(IZ)V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_a

    .line 3
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 4
    :cond_a
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    new-instance v1, Lcom/tencent/tmes/live/redpacket/g$b;

    invoke-direct {v1, p0}, Lcom/tencent/tmes/live/redpacket/g$b;-><init>(Lcom/tencent/tmes/live/redpacket/g;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public e()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Lcom/tencent/tmes/live/redpacket/g;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmes/live/redpacket/g;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    sget v3, Lcom/tencent/tme/live/biz/R$string;->send_packet_interval:I

    invoke-static {v1, v3}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    iget-object v3, v0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    iget-wide v3, v3, Lcom/tencent/tme/live/w0/j;->i:J

    const-wide/16 v5, 0x3e8

    .line 1
    div-long/2addr v3, v5

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-gtz v8, :cond_4

    const-string v3, "0m"

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0xe10

    div-long v8, v3, v5

    long-to-int v9, v8

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long v10, v3, v5

    long-to-int v8, v10

    rem-long/2addr v3, v5

    long-to-int v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v9, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v7

    const-string v5, "%dh"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-lez v8, :cond_6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v7

    const-string v5, "%dm"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-lez v4, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v7

    const-string v4, "%ds"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    :goto_1
    iget-object v4, v0, Lcom/tencent/tmes/live/redpacket/g;->h:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lcom/tencent/tmes/live/redpacket/g;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/tmes/live/redpacket/g;->a(I)Lcom/tencent/tme/live/y2/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tme/live/y2/d;->a()V

    .line 3
    iget-boolean v1, v0, Lcom/tencent/tmes/live/redpacket/g;->j:Z

    if-eqz v1, :cond_8

    goto/16 :goto_5

    :cond_8
    iput-boolean v2, v0, Lcom/tencent/tmes/live/redpacket/g;->j:Z

    iget v1, v0, Lcom/tencent/tmes/live/redpacket/g;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/tmes/live/redpacket/g;->b(I)Lcom/tencent/tme/live/w0/j$a;

    move-result-object v1

    if-nez v1, :cond_9

    goto/16 :goto_5

    :cond_9
    iget-object v3, v0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    if-nez v3, :cond_a

    goto/16 :goto_5

    :cond_a
    iget v3, v3, Lcom/tencent/tme/live/w0/j;->a:I

    iget v4, v1, Lcom/tencent/tme/live/w0/j$a;->i:I

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    sget-boolean v6, Lcom/tencent/tme/live/v0/f;->g:Z

    iget-object v8, v0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    iget-wide v9, v8, Lcom/tencent/tme/live/w0/j;->i:J

    long-to-int v10, v9

    iget-boolean v9, v0, Lcom/tencent/tmes/live/redpacket/g;->i:Z

    iget v1, v1, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-ne v1, v2, :cond_b

    const/4 v7, 0x1

    :cond_b
    invoke-virtual {v8}, Lcom/tencent/tme/live/w0/j;->a()Z

    move-result v1

    iget-object v8, v0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    invoke-static {v8}, Lcom/tencent/tmes/live/redpacket/b;->a(Lcom/tencent/tme/live/w0/j;)Ljava/lang/String;

    move-result-object v8

    .line 4
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v11

    new-instance v12, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v12}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 5
    new-instance v13, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v13, v12}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 6
    new-instance v12, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v12}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    iput-object v3, v12, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    iput-object v3, v12, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 10
    iput-object v5, v12, Lcom/tencent/tme/live/z0/c$a;->c:Ljava/lang/String;

    .line 11
    new-instance v14, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v14, v12}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 12
    new-instance v3, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v3}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    const/4 v4, 0x2

    if-eqz v6, :cond_c

    const/4 v5, 0x2

    goto :goto_2

    :cond_c
    const/4 v5, 0x1

    .line 13
    :goto_2
    iput v5, v3, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 14
    div-int/lit16 v10, v10, 0x3e8

    .line 15
    iput v10, v3, Lcom/tencent/tme/live/z0/b$a;->b:I

    if-eqz v9, :cond_d

    const/4 v5, 0x2

    goto :goto_3

    :cond_d
    const/4 v5, 0x1

    .line 16
    :goto_3
    iput v5, v3, Lcom/tencent/tme/live/z0/b$a;->c:I

    if-eqz v7, :cond_e

    const/4 v2, 0x2

    .line 17
    :cond_e
    iput v2, v3, Lcom/tencent/tme/live/z0/b$a;->d:I

    .line 18
    new-instance v15, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v15, v3}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 19
    new-instance v2, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {v2}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    if-eqz v1, :cond_f

    const-string v1, "single"

    goto :goto_4

    :cond_f
    const-string v1, "multiple"

    .line 20
    :goto_4
    iput-object v1, v2, Lcom/tencent/tme/live/z0/d$a;->a:Ljava/lang/String;

    .line 21
    iput-object v8, v2, Lcom/tencent/tme/live/z0/d$a;->b:Ljava/lang/String;

    .line 22
    new-instance v1, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v1, v2}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 23
    const-string v12, "RedPacketPanelShow_aov"

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    :goto_5
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
