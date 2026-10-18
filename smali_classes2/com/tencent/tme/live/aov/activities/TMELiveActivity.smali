.class public Lcom/tencent/tme/live/aov/activities/TMELiveActivity;
.super Lcom/tencent/tme/live/framework/common/TMEBaseActivity;


# static fields
.field public static final synthetic i:I


# instance fields
.field public d:Z

.field public e:Lcom/tencent/tme/live/r0/h;

.field public f:Lcom/tencent/tme/live/r0/c;

.field public g:Lcom/tencent/tme/live/r0/g;

.field public h:J


# direct methods
.method public static synthetic $r8$lambda$OWIV8yYTfGsjoQLUq4R-rsoijvg(Lcom/tencent/tme/live/aov/activities/TMELiveActivity;Lcom/tencent/tme/live/l2/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->b(Lcom/tencent/tme/live/l2/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->d:Z

    return-void
.end method

.method private synthetic b(Lcom/tencent/tme/live/l2/b;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->d:Z

    const-string v0, "onWindowFocusChanged is success"

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->a(Lcom/tencent/tme/live/l2/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tme/live/l2/b;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/tencent/tme/live/l2/b;->b:Z

    if-eqz v0, :cond_3

    .line 2
    sput-object p1, Lcom/tencent/tme/live/v0/f;->f:Lcom/tencent/tme/live/l2/b;

    iget-object v1, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->e:Lcom/tencent/tme/live/r0/h;

    .line 3
    iput-object p1, v1, Lcom/tencent/tme/live/r0/h;->j:Lcom/tencent/tme/live/l2/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget p1, p1, Lcom/tencent/tme/live/l2/b;->a:I

    .line 5
    iget-object v0, v1, Lcom/tencent/tme/live/r0/h;->f:Landroid/view/View;

    invoke-virtual {v0, p1, v2, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    iget-object v0, v1, Lcom/tencent/tme/live/r0/h;->n:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    invoke-static {v1, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->f:Lcom/tencent/tme/live/r0/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v0, Lcom/tencent/tme/live/v0/f;->f:Lcom/tencent/tme/live/l2/b;

    if-eqz v0, :cond_2

    .line 11
    iget-boolean v1, v0, Lcom/tencent/tme/live/l2/b;->b:Z

    if-eqz v1, :cond_2

    .line 12
    iget v0, v0, Lcom/tencent/tme/live/l2/b;->a:I

    .line 13
    iget-object v1, p1, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p1, Lcom/tencent/tme/live/r0/c;->D:Lcom/tencent/tme/live/s0/a;

    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    .line 14
    iget-object p1, p1, Lcom/tencent/tme/live/s0/a;->d:Landroid/view/View;

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->g:Lcom/tencent/tme/live/r0/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-object v0, Lcom/tencent/tme/live/v0/f;->f:Lcom/tencent/tme/live/l2/b;

    if-eqz v0, :cond_3

    .line 17
    iget-boolean v1, v0, Lcom/tencent/tme/live/l2/b;->b:Z

    if-eqz v1, :cond_3

    .line 18
    iget v0, v0, Lcom/tencent/tme/live/l2/b;->a:I

    .line 19
    iget-object p1, p1, Lcom/tencent/tme/live/r0/g;->f:Landroid/view/View;

    invoke-virtual {p1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public b()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_live_layout:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/tencent/tme/live/p0/b;->a()V

    new-instance p1, Lcom/tencent/tme/live/r0/h;

    invoke-direct {p1}, Lcom/tencent/tme/live/r0/h;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->e:Lcom/tencent/tme/live/r0/h;

    new-instance p1, Lcom/tencent/tme/live/r0/c;

    invoke-direct {p1}, Lcom/tencent/tme/live/r0/c;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->f:Lcom/tencent/tme/live/r0/c;

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->content:I

    iget-object v1, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->f:Lcom/tencent/tme/live/r0/c;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/w2/c;->a(ILcom/tencent/tme/live/w2/b;)Lcom/tencent/tme/live/w2/c;

    new-instance p1, Lcom/tencent/tme/live/r0/g;

    invoke-direct {p1}, Lcom/tencent/tme/live/r0/g;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->g:Lcom/tencent/tme/live/r0/g;

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->operation:I

    iget-object v1, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->g:Lcom/tencent/tme/live/r0/g;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/w2/c;->a(ILcom/tencent/tme/live/w2/b;)Lcom/tencent/tme/live/w2/c;

    invoke-virtual {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->titlebar:I

    iget-object v1, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->e:Lcom/tencent/tme/live/r0/h;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/w2/c;->a(ILcom/tencent/tme/live/w2/b;)Lcom/tencent/tme/live/w2/c;

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->p:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/k2/b;->a()Lcom/tencent/tme/live/k2/b;

    move-result-object p1

    new-instance v0, Lcom/tencent/tme/live/o0/a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/o0/a;-><init>(Lcom/tencent/tme/live/aov/activities/TMELiveActivity;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tencent/tme/live/k2/a;

    invoke-direct {v2, p1, p0, v0}, Lcom/tencent/tme/live/k2/a;-><init>(Lcom/tencent/tme/live/k2/b;Landroid/app/Activity;Lcom/tencent/tme/live/l2/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/b1/m;->a(Landroid/view/View;)V

    .line 4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->h:J

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/tme/live/b/a;->b:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterTVInfo"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->onDestroy()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;->h:J

    invoke-static {v2, v3}, Lcom/tencent/tme/live/b1/c;->a(J)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 1
    invoke-static {v3, v4}, Lcom/tencent/tme/live/b1/c;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 2
    filled-new-array {v2, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "TVUserStayTime"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, " onActivityPaused :"

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",hasCode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TMEActivityLifecycleCallback"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged is called:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/w0/d;->p:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/k2/b;->a()Lcom/tencent/tme/live/k2/b;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/aov/activities/TMELiveActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/aov/activities/TMELiveActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/aov/activities/TMELiveActivity;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tme/live/k2/b;->a(Landroid/view/Window;Lcom/tencent/tme/live/l2/c;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
