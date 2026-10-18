.class public Lcom/tencent/gcloud/msdk/view/ToolBarAmin;
.super Ljava/lang/Object;
.source "ToolBarAmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;,
        Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewAnimListener;
    }
.end annotation


# instance fields
.field private mAnimationTitlebarHide:Landroid/view/animation/Animation;

.field private mAnimationTitlebarShow:Landroid/view/animation/Animation;

.field private mAnimationToolbarHide:Landroid/view/animation/Animation;

.field private mAnimationToolbarShow:Landroid/view/animation/Animation;

.field private mBarHeight:I

.field private mColorHide:Landroid/animation/ValueAnimator;

.field private mColorShow:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mDetector:Landroid/view/GestureDetector;

.field private mFlingLimitX:I

.field private mFlingLimitY:I

.field private mIsShow:Z

.field private mTitleBar:Landroid/view/View;

.field private mTitleBarHide:Landroid/animation/ValueAnimator;

.field private mTitleBarShow:Landroid/animation/ValueAnimator;

.field private mToolBar:Landroid/view/View;

.field private mToolBarEnable:Z

.field private mToolBarHide:Landroid/animation/ValueAnimator;

.field private mToolBarShow:Landroid/animation/ValueAnimator;

.field private mWebView:Lcom/tencent/smtt/sdk/WebView;

.field private titlebarHideable:Z

.field private toolbarLandscapeHideable:Z

.field private toolbarPortraitHideable:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/tencent/smtt/sdk/WebView;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mIsShow:Z

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->titlebarHideable:Z

    .line 44
    iput-boolean v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->toolbarPortraitHideable:Z

    .line 45
    iput-boolean v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->toolbarLandscapeHideable:Z

    .line 47
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarEnable:Z

    .line 56
    const-string v0, "Construct tool bar amin"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBar:Landroid/view/View;

    .line 59
    iput-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 60
    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;

    invoke-direct {p3, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mDetector:Landroid/view/GestureDetector;

    .line 62
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance p2, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$1;

    invoke-direct {p2, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$1;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/GestureDetector;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->setAnimationDuration(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->titlebarHideable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->toolbarLandscapeHideable:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mColorHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->toolbarPortraitHideable:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/animation/Animation;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/animation/Animation;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/View;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mColorShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/animation/Animation;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/view/animation/Animation;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->getOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarEnable:Z

    return p0
.end method

.method static synthetic access$500(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Lcom/tencent/smtt/sdk/WebView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mIsShow:Z

    return p0
.end method

.method static synthetic access$602(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mIsShow:Z

    return p1
.end method

.method static synthetic access$700(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mFlingLimitX:I

    return p0
.end method

.method static synthetic access$800(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mFlingLimitY:I

    return p0
.end method

.method static synthetic access$900(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mBarHeight:I

    return p0
.end method

.method private getOrientation()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private initAnimation()V
    .locals 10

    .line 114
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 115
    const-string/jumbo v0, "title bar can not be null"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->showToolBar()V

    .line 119
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarEnable:Z

    if-nez v0, :cond_1

    .line 120
    const-string/jumbo v0, "tool bar not enable, return"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->dimen_fling_limit_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mFlingLimitX:I

    .line 124
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->dimen_fling_limit_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mFlingLimitY:I

    .line 136
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->dimen_titlebar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mBarHeight:I

    neg-int v0, v0

    const/4 v1, 0x0

    .line 138
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    .line 139
    new-instance v2, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$2;

    invoke-direct {v2, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$2;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    const/16 v2, 0x78

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    iget v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mBarHeight:I

    neg-int v0, v0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    .line 154
    new-instance v4, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$3;

    invoke-direct {v4, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$3;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    iget v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mBarHeight:I

    neg-int v0, v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    .line 170
    new-instance v4, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$4;

    invoke-direct {v4, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$4;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    iget v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mBarHeight:I

    neg-int v0, v0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    .line 186
    new-instance v4, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$5;

    invoke-direct {v4, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$5;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->color_toolbar_visible:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 203
    iget-object v4, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->color_toolbar_invisible:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 204
    new-instance v5, Lcom/tencent/gcloud/msdk/view/ColorEvaluator;

    invoke-direct {v5}, Lcom/tencent/gcloud/msdk/view/ColorEvaluator;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v6, v9, v1

    const/4 v6, 0x1

    aput-object v7, v9, v6

    invoke-static {v5, v9}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mColorHide:Landroid/animation/ValueAnimator;

    .line 205
    new-instance v7, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$6;

    invoke-direct {v7, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$6;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mColorHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    new-instance v5, Lcom/tencent/gcloud/msdk/view/ColorEvaluator;

    invoke-direct {v5}, Lcom/tencent/gcloud/msdk/view/ColorEvaluator;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v1

    aput-object v0, v7, v6

    invoke-static {v5, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mColorShow:Landroid/animation/ValueAnimator;

    .line 216
    new-instance v1, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$7;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$7;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mColorShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private setAnimationDuration(I)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 251
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 252
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 253
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 254
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mColorHide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mColorShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private showToolBar()V
    .locals 3

    .line 232
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarEnable:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->getOrientation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 240
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public setTitleBarHideable(Z)V
    .locals 2

    .line 77
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->titlebarHideable:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView ToolBar titlebarHideable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setToolBarEnable(Z)V
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setToolBarEnable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 264
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarEnable:Z

    .line 265
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->showToolBar()V

    return-void
.end method

.method public setToolBarLandscapeHideable(Z)V
    .locals 2

    .line 95
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->toolbarLandscapeHideable:Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView ToolBar toolbarLandscapeHideable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setToolBarPortraitHideable(Z)V
    .locals 2

    .line 86
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->toolbarPortraitHideable:Z

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView ToolBar toolbarPortraitHideable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public showTitleBar(Z)V
    .locals 2

    .line 269
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mToolBarEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showTitleBar:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
