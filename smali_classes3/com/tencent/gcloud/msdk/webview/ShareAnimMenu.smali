.class public Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;
.super Ljava/lang/Object;
.source "ShareAnimMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$IDismissListener;
    }
.end annotation


# instance fields
.field private contentContainer:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private decorView:Landroid/view/ViewGroup;

.field private isDismissed:Z

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    .line 37
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->context:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    .line 41
    const-string v1, "msdk_webview_share_container"

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "share_view_container"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x50

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;)Landroid/view/ViewGroup;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;)Landroid/view/ViewGroup;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->isDismissed:Z

    return p1
.end method

.method private isShowing()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "share_bg_container"

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dismiss(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$IDismissListener;)V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->isDismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->context:Landroid/content/Context;

    const-string v1, "msdk_webview_anim_share_slide_out"

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    const-string v0, "loadAnimation msdk_webview_anim_share_slide_out error!"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 108
    new-instance v1, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$2;-><init>(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$IDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 132
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->isDismissed:Z

    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    return-void
.end method

.method public show()V
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "share_bg_container"

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v1, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$1;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$1;-><init>(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->context:Landroid/content/Context;

    const-string v1, "msdk_webview_anim_share_slide_in"

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    const-string v0, "loadAnimation msdk_webview_anim_share_slide_in error!"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
