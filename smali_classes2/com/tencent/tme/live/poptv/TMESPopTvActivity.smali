.class public Lcom/tencent/tme/live/poptv/TMESPopTvActivity;
.super Lcom/tencent/tme/live/framework/common/TMEBaseActivity;


# static fields
.field public static final synthetic e:I


# instance fields
.field public d:Lcom/tencent/tme/live/k1/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tmes_poptv_main_container:I

    return v0
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sget v0, Lcom/tencent/tme/live/biz/R$anim;->activity_open:I

    sget v1, Lcom/tencent/tme/live/biz/R$anim;->activity_close:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->setRequestedOrientation(I)V

    :cond_0
    new-instance p1, Lcom/tencent/tme/live/k1/e;

    invoke-direct {p1}, Lcom/tencent/tme/live/k1/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/poptv/TMESPopTvActivity;->d:Lcom/tencent/tme/live/k1/e;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/k1/e;->f:Ljava/lang/String;

    .line 2
    const-string v0, "setIntent intent is null"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_1
    const-string v1, "PopTVCfgBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    iput-object v0, p1, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->pop_tv_container:I

    iget-object v1, p0, Lcom/tencent/tme/live/poptv/TMESPopTvActivity;->d:Lcom/tencent/tme/live/k1/e;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/w2/c;->a(ILcom/tencent/tme/live/w2/b;)Lcom/tencent/tme/live/w2/c;

    .line 5
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->p:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/tencent/tme/live/k2/b;->a()Lcom/tencent/tme/live/k2/b;

    move-result-object p1

    new-instance v0, Lcom/tencent/tme/live/i1/f;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/i1/f;-><init>(Lcom/tencent/tme/live/poptv/TMESPopTvActivity;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tencent/tme/live/k2/a;

    invoke-direct {v2, p1, p0, v0}, Lcom/tencent/tme/live/k2/a;-><init>(Lcom/tencent/tme/live/k2/b;Landroid/app/Activity;Lcom/tencent/tme/live/l2/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/b1/m;->a(Landroid/view/View;)V

    :goto_1
    return-void
.end method
