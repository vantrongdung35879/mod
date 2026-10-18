.class public Lcom/tencent/gcloud/msdk/webview/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;,
        Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;,
        Lcom/tencent/gcloud/msdk/webview/WebViewActivity$ColorEvaluator;,
        Lcom/tencent/gcloud/msdk/webview/WebViewActivity$WebViewAnimListener;,
        Lcom/tencent/gcloud/msdk/webview/WebViewActivity$WebViewGestureListener;
    }
.end annotation


# static fields
.field private static final REQUESTCODE_FILECHOOSER:I = 0x1


# instance fields
.field private CAPTURE_LOCATION:Ljava/lang/String;

.field private MSDKMETHOD:Ljava/lang/String;

.field private WXGAMELINE_METHOD:Ljava/lang/String;

.field private fileUtils:Lcom/tencent/gcloud/msdk/tools/FileUtils;

.field private isBackDisable:Z

.field private isFullScreen:Z

.field private loadingColor:Ljava/lang/String;

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mAnimationTitlebarHide:Landroid/view/animation/Animation;

.field private mAnimationTitlebarShow:Landroid/view/animation/Animation;

.field private mAnimationToolbarHide:Landroid/view/animation/Animation;

.field private mAnimationToolbarShow:Landroid/view/animation/Animation;

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mBackUnclickableBtn:Landroid/widget/ImageButton;

.field private mBarHeight:I

.field private mColorHide:Landroid/animation/ValueAnimator;

.field private mColorShow:Landroid/animation/ValueAnimator;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

.field private mDetector:Landroid/view/GestureDetector;

.field private mDownloadDlg:Landroid/app/Dialog;

.field private mFlingLimitX:I

.field private mFlingLimitY:I

.field private mForwardBtn:Landroid/widget/ImageButton;

.field private mForwardUnclickableBtn:Landroid/widget/ImageButton;

.field private mIsShow:Ljava/lang/Boolean;

.field private mLandMoreBtn:Landroid/view/View;

.field private mMoreBtn:Landroid/widget/ImageButton;

.field private mMoreDlg:Landroid/app/Dialog;

.field private mOpenBrowserBtn:Landroid/widget/ImageButton;

.field private mOrientation:I

.field private mOriginalOrientation:I

.field private mOriginalSystemUiVisibility:I

.field private mOriginalUrl:Ljava/lang/String;

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mRefreshBtn:Landroid/widget/ImageButton;

.field private mReturnAppBtn:Landroid/view/View;

.field private mShareAnimMenu:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

.field private mShareChannel:Ljava/lang/String;

.field mShareDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mShareEnable:Z

.field private mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mStopBtn:Landroid/widget/ImageButton;

.field private mTitleBar:Landroid/widget/RelativeLayout;

.field private mTitleBarHide:Landroid/animation/ValueAnimator;

.field private mTitleBarShow:Landroid/animation/ValueAnimator;

.field private mTitleStr:Ljava/lang/String;

.field private mToolBar:Landroid/widget/LinearLayout;

.field private mToolBarHide:Landroid/animation/ValueAnimator;

.field private mToolBarShow:Landroid/animation/ValueAnimator;

.field private mUserAgent:Ljava/lang/String;

.field private mWebChromeClient:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;

.field private mWebTitle:Landroid/widget/TextView;

.field protected mWebView:Lcom/tencent/smtt/sdk/WebView;

.field private mWebViewOrientation:I

.field private observerId:I

.field private seqId:Ljava/lang/String;

.field private titleBarAlpha:F

.field private titleBarColor:Ljava/lang/String;

.field private titlebarHideable:Ljava/lang/Boolean;

.field private toolBarAlpha:F

.field private toolBarColor:Ljava/lang/String;

.field private toolbarLandscapeHideable:Ljava/lang/Boolean;

.field private toolbarPortraitHideable:Ljava/lang/Boolean;

.field private uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareEnable:Z

    const/4 v1, 0x0

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->titlebarHideable:Ljava/lang/Boolean;

    .line 166
    iput-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolbarPortraitHideable:Ljava/lang/Boolean;

    .line 167
    iput-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    .line 169
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mIsShow:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOrientation:I

    .line 176
    iput-boolean v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isFullScreen:Z

    .line 177
    iput-boolean v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isBackDisable:Z

    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareAnimMenu:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    .line 179
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    .line 187
    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->observerId:I

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->seqId:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "webview_capture"

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->CAPTURE_LOCATION:Ljava/lang/String;

    .line 190
    const-string v0, "MsdkMethod"

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->MSDKMETHOD:Ljava/lang/String;

    .line 191
    const-string v0, "WGGetWXGameLinePicture"

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->WXGAMELINE_METHOD:Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/tencent/gcloud/msdk/tools/FileUtils;

    invoke-direct {v0}, Lcom/tencent/gcloud/msdk/tools/FileUtils;-><init>()V

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->fileUtils:Lcom/tencent/gcloud/msdk/tools/FileUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/view/GestureDetector;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->savePhotoFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mFlingLimitX:I

    return p0
.end method

.method static synthetic access$1100(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mFlingLimitY:I

    return p0
.end method

.method static synthetic access$1200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBarHeight:I

    return p0
.end method

.method static synthetic access$1300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setAnimationDuration(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->titlebarHideable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    return p0
.end method

.method static synthetic access$1700(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->checkBackForwardBtnState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolbarPortraitHideable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->handleShareEvent(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;ILjava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->sendMessageToGame(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->refreshUIAfterStop()V

    return-void
.end method

.method static synthetic access$3000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;II)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->sendGetPhoneNumberRequest(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$3102(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->MSDKMETHOD:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->WXGAMELINE_METHOD:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getGameLinePicture()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/view/View;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOriginalSystemUiVisibility:I

    return p0
.end method

.method static synthetic access$3802(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;I)I
    .locals 0

    .line 114
    iput p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOriginalSystemUiVisibility:I

    return p1
.end method

.method static synthetic access$3900(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOriginalOrientation:I

    return p0
.end method

.method static synthetic access$3902(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;I)I
    .locals 0

    .line 114
    iput p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOriginalOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mCustomViewCallback:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mCustomViewCallback:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->downloadPhotoFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->saveToAlbum(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;ILjava/lang/String;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getPhoneNumberRequestResultCallbackToH5(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)Z
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->needToRedirect(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->refreshUIAfterStartLoading()V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareAnimMenu:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mIsShow:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$902(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mIsShow:Ljava/lang/Boolean;

    return-object p1
.end method

.method private checkBackForwardBtnState()V
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 760
    :goto_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private checkToolbarStatus()V
    .locals 4

    const/4 v0, 0x2

    .line 730
    iget v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 731
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareEnable:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 735
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isFullScreen:Z

    if-nez v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 739
    :goto_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 740
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 741
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->titleBarColor:Ljava/lang/String;

    const-string v2, "#333333"

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->parseColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 743
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->titleBarAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 744
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 745
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 746
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolBarColor:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewManager;->parseColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 748
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolBarAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private deleteGamelinePicture()V
    .locals 3

    .line 1790
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->fileUtils:Lcom/tencent/gcloud/msdk/tools/FileUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/gcloud/msdk/tools/FileUtils;->filePathForMSDK(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1791
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "wxgameline.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1792
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1793
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private downloadPhotoFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1646
    const-string v0, ","

    .line 0
    const-string v1, "Download photo failed! url:"

    .line 1646
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download photo from url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1651
    :try_start_0
    const-string v3, "data:image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1653
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1654
    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v2

    goto :goto_0

    .line 1656
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 1658
    move-object v3, v0

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 1659
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 1660
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 1662
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1663
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1664
    :try_start_2
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 1667
    :goto_0
    :try_start_3
    const-string v3, "Download photo success"

    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_1

    .line 1674
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v4, :cond_4

    .line 1678
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    .line 1681
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_1
    move-exception v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v5, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v5

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v4, v2

    :goto_3
    move-object v2, v0

    goto :goto_9

    :catch_3
    move-exception v3

    move-object v4, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v4

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v4, v2

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    .line 1669
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_2

    .line 1674
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_5
    move-exception p1

    goto :goto_6

    :cond_2
    :goto_5
    if-eqz v4, :cond_3

    .line 1678
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    .line 1681
    :goto_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_7
    move-object v0, v3

    :cond_4
    :goto_8
    return-object v0

    :catchall_3
    move-exception p1

    :goto_9
    if-eqz v2, :cond_5

    .line 1674
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_b

    :cond_5
    :goto_a
    if-eqz v4, :cond_6

    .line 1678
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    .line 1681
    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1682
    :cond_6
    :goto_c
    throw p1
.end method

.method private getCurrentUrl()Ljava/lang/String;
    .locals 5

    .line 1192
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1195
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    .line 1197
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1196
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1198
    const-string v1, "getCurrentUrl state:true"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-object v0

    .line 1202
    :cond_0
    const-string v1, "getCurrentUrl = null"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private getGameLinePicture()Ljava/lang/String;
    .locals 4

    .line 1769
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->fileUtils:Lcom/tencent/gcloud/msdk/tools/FileUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/gcloud/msdk/tools/FileUtils;->filePathForMSDK(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1770
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "wxgameline.jpg"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1772
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1776
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 1777
    new-array v1, v1, [B

    .line 1778
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 1779
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1780
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1783
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1786
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getPhoneNumberRequestResultCallbackToH5(ILjava/lang/String;I)V
    .locals 2

    .line 1889
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1890
    new-instance v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$19;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1868
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1869
    :goto_0
    array-length v1, p1

    const-string v2, ""

    if-ge v0, v1, :cond_1

    .line 1870
    aget-object v1, p1, v0

    .line 1871
    const-string v3, "Location:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1872
    const-string p1, "\r"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1873
    const-string v0, "\n"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1874
    const-string v0, " "

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1875
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    .line 1876
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1881
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Got redirect url:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-object v2
.end method

.method private getWebViewImagePath()Ljava/lang/String;
    .locals 4

    .line 1176
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1177
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1179
    const-string v0, ""

    return-object v0

    .line 1181
    :cond_0
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->CAPTURE_LOCATION:Ljava/lang/String;

    const-string v3, "capture"

    invoke-static {p0, v0, v2, v3, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->saveBitmapToLocal(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 1184
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the path of capture image : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 8

    if-eqz p1, :cond_7

    .line 446
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setWebViewMode(Landroid/content/Intent;)V

    .line 447
    const-string/jumbo v0, "user_agent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mUserAgent:Ljava/lang/String;

    .line 450
    :cond_0
    const-string/jumbo v0, "webview_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "webview_config"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 451
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    .line 452
    const-string/jumbo v0, "webview_key_loading_color"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->loadingColor:Ljava/lang/String;

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "webview_key_title_bar_color"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->titleBarColor:Ljava/lang/String;

    .line 454
    const-string/jumbo v0, "webview_key_title_bar_alpha"

    const/16 v3, 0x64

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-float v0, v4

    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->titleBarAlpha:F

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "webview_key_tool_bar_color"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolBarColor:Ljava/lang/String;

    .line 456
    const-string/jumbo v0, "webview_key_tool_bar_alpha"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v6

    double-to-float v0, v2

    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolBarAlpha:F

    .line 458
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webview config = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 461
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 462
    const-string v0, "WEBVIEW_SHARE_CHANNEL"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareChannel:Ljava/lang/String;

    .line 465
    const-string v2, "NONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareEnable:Z

    .line 469
    :cond_1
    const-string v0, "WEBVIEW_X5_CLOSE_ANDROID"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 470
    const-string v2, "WEBVIEW_X5_UPLOAD_ANDROID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 471
    invoke-direct {p0, v0, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->initX5Config(ZZ)V

    .line 474
    const-string v0, "WEBVIEW_PORTRAIT_BAR_HIDEABLE"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolbarPortraitHideable:Ljava/lang/Boolean;

    .line 475
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->titlebarHideable:Ljava/lang/Boolean;

    .line 476
    const-string v0, "WEBVIEW_LANDSCAPE_BAR_HIDEABLE"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    .line 477
    const-string v0, "WEBVIEW_IS_FULLSCREEN"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isFullScreen:Z

    .line 478
    const-string v0, "CONFIG_KEY_BACK_DISABLE"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isBackDisable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 483
    :goto_0
    const-string/jumbo v0, "webview_screen"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOrientation:I

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mOrientation is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    .line 492
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    .line 489
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    .line 486
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 499
    :cond_5
    const-string/jumbo v0, "webview_calljs"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 500
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->callJs(Ljava/lang/String;)V

    .line 503
    :cond_6
    :goto_1
    const-string/jumbo v0, "webview_key_observer_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_8

    .line 504
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->observerId:I

    .line 505
    const-string/jumbo v0, "webview_key_seq_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->seqId:Ljava/lang/String;

    goto :goto_2

    .line 508
    :cond_7
    const-string p1, "Start WebViewActivity error, without intent data"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->finish()V

    :cond_8
    :goto_2
    return-void
.end method

.method private handleShareEvent(I)V
    .locals 8

    .line 1116
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;

    .line 1124
    iget-object p1, p1, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "Facebook"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "QQ"

    const-string v6, "WeChat"

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "Qzone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "Moment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    :goto_0
    const/16 p1, 0x67

    const/16 v0, 0x66

    packed-switch v7, :pswitch_data_0

    const-string v1, ""

    goto :goto_3

    .line 1126
    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/webview/ShareManager;->shareToBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_1
    move-object v1, v5

    :goto_1
    :pswitch_2
    const/16 v4, 0x66

    goto :goto_3

    :pswitch_3
    move-object v1, v5

    :goto_2
    const/16 v4, 0x67

    goto :goto_3

    :pswitch_4
    move-object v1, v6

    goto :goto_2

    :pswitch_5
    move-object v1, v6

    goto :goto_1

    :goto_3
    if-eqz v4, :cond_9

    .line 1150
    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    .line 1154
    :cond_7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1156
    :try_start_0
    const-string v0, "channel"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1157
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1158
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1159
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1160
    const-string p1, "not allow to share illegal URL begins with \"file://\""

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 1163
    :cond_8
    const-string v1, "link"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1164
    const-string/jumbo v0, "type"

    const/16 v1, 0x2711

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1165
    const-string/jumbo v0, "thumbPath"

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWebViewImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1166
    const-string v0, "isToastShow"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1167
    const-string v0, "from_key"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1168
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->sendMessageToGame(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1170
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-void

    .line 1151
    :cond_9
    :goto_5
    const-string p1, "handleShareEvent data error"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 1117
    :cond_a
    :goto_6
    const-string p1, "handleShareEvent mShareDataList null/size = 0!"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x764b91e0 -> :sswitch_5
        -0x65db149a -> :sswitch_4
        0xa20 -> :sswitch_3
        0x4ae937d -> :sswitch_2
        0x217bfee6 -> :sswitch_1
        0x6c37c308 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private initAnimation()V
    .locals 10

    .line 790
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->dimen_fling_limit_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mFlingLimitX:I

    .line 791
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->dimen_fling_limit_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mFlingLimitY:I

    .line 805
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->dimen_titlebar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBarHeight:I

    neg-int v0, v0

    const/4 v1, 0x0

    .line 807
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    .line 808
    new-instance v2, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$6;

    invoke-direct {v2, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$6;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 819
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 820
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    const/16 v2, 0x78

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 822
    iget v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBarHeight:I

    neg-int v0, v0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    .line 823
    new-instance v4, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$7;

    invoke-direct {v4, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$7;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 835
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 836
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 838
    iget v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBarHeight:I

    neg-int v0, v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    .line 839
    new-instance v4, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$8;

    invoke-direct {v4, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$8;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 851
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 852
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 854
    iget v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBarHeight:I

    neg-int v0, v0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    .line 855
    new-instance v4, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$9;

    invoke-direct {v4, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$9;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 867
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 868
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 871
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->color_toolbar_visible:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 872
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->color_toolbar_invisible:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 873
    new-instance v5, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$ColorEvaluator;

    invoke-direct {v5}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$ColorEvaluator;-><init>()V

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

    iput-object v5, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    .line 874
    new-instance v7, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$10;

    invoke-direct {v7, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$10;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 882
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 884
    new-instance v5, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$ColorEvaluator;

    invoke-direct {v5}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$ColorEvaluator;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v1

    aput-object v0, v7, v6

    invoke-static {v5, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    .line 885
    new-instance v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$11;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$11;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 893
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private initLayout()V
    .locals 4

    .line 638
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->playout:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mParentLayout:Landroid/view/ViewGroup;

    .line 641
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->webTitle:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebTitle:Landroid/widget/TextView;

    .line 642
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    .line 644
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    .line 646
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->refresh:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    .line 647
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->stop:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    .line 650
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->back:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    .line 653
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->backUnclickable:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    .line 656
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->forward:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    .line 657
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->forwardUnclickable:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    .line 661
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->land_more:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    .line 662
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareEnable:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->return_app:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mReturnAppBtn:Landroid/view/View;

    .line 667
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->openByBrowser:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOpenBrowserBtn:Landroid/widget/ImageButton;

    .line 671
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->more:I

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mMoreBtn:Landroid/widget/ImageButton;

    .line 675
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mMoreBtn:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareEnable:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 678
    const-string v0, "msdk_webview_share_dlg"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    new-instance v1, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    invoke-direct {v1, p0, v0}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareAnimMenu:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    .line 681
    const-string v0, "share_cancel"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 682
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareAnimMenu:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    invoke-virtual {v2, v1}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 684
    new-instance v2, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$5;

    invoke-direct {v2, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$5;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 693
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 697
    :cond_2
    const-string v0, "share_recyclerView"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 698
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareAnimMenu:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 701
    :cond_3
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->loadingColor:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 702
    new-instance v0, Lcom/tencent/gcloud/msdk/view/LoadingView;

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivityCur()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->loadingColor:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/gcloud/msdk/view/LoadingView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 703
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/view/LoadingView;->addViewToGroup(Landroid/view/ViewGroup;)V

    .line 704
    invoke-static {}, Lcom/tencent/gcloud/msdk/view/LoadingView;->start()V

    goto :goto_2

    .line 706
    :cond_4
    const-string v0, "no set loading background hex color"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private initShareLayoutData()V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 1089
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1090
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1091
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1093
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareChannel:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/webview/ShareManager;->getShareListData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    .line 1094
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;-><init>(Landroid/content/Context;)V

    .line 1095
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->setShareData(Ljava/util/List;)V

    .line 1096
    new-instance v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$12;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$12;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->setOnItemClickListener(Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;)V

    .line 1110
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method private initWebView()V
    .locals 5

    .line 535
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebChromeClient:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;

    .line 536
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 537
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$3;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 561
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$4;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$4;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V

    .line 576
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 582
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 583
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    const/4 v2, 0x0

    .line 586
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 587
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 589
    sget-object v3, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 590
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 591
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 592
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 593
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportMultipleWindows(Z)V

    .line 596
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    .line 599
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 600
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 601
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 602
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 603
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    const-wide v3, 0x7fffffffffffffffL

    .line 604
    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheMaxSize(J)V

    .line 605
    const-string v3, "appcache"

    invoke-virtual {p0, v3, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 606
    const-string v3, "databases"

    invoke-virtual {p0, v3, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 607
    const-string v3, "geolocation"

    invoke-virtual {p0, v3, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 608
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON_DEMAND:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 609
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->HIGH:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setRenderPriority(Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;)V

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "useragent : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/16 v2, 0x64

    .line 614
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setTextZoom(I)V

    .line 615
    invoke-static {p0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 616
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    .line 618
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/smtt/sdk/CookieManager;->setAcceptThirdPartyCookies(Lcom/tencent/smtt/sdk/WebView;Z)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    invoke-static {p0}, Lcom/tencent/smtt/sdk/WebView;->getTbsCoreVersion(Landroid/content/Context;)I

    .line 623
    invoke-static {p0}, Lcom/tencent/smtt/sdk/WebView;->getTbsSDKVersion(Landroid/content/Context;)I

    :cond_0
    return-void
.end method

.method private initX5Config(ZZ)V
    .locals 7

    .line 1211
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1213
    :try_start_0
    const-string v2, "com.tencent.smtt.sdk.QbSdk"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1214
    const-string v3, "canGetSubscriberId"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1215
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string v2, "canGetSubscriberId  invoked"

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1218
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no class com.tencent.smtt.sdk.QbSdk canGetSubscriberId method found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    if-nez p2, :cond_0

    .line 1222
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1223
    const-string v2, "SET_SENDREQUEST_AND_UPLOAD"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    invoke-static {p2}, Lcom/tencent/smtt/sdk/QbSdk;->initTbsSettings(Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1229
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->forceSysWebView()V

    .line 1233
    :cond_1
    new-instance p1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$13;

    invoke-direct {p1, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$13;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-static {v0, p1}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    return-void
.end method

.method private isAllowReload(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 515
    invoke-static {}, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewMode;->GetWebViewMode()Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    move-result-object v0

    sget-object v1, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->GameMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    if-ne v0, v1, :cond_0

    .line 516
    const-string v0, "MSDK_WEBVIEW_MODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GCloudMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private loadUrl()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "mOriginalUrl is empty!"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private needToRedirect(Ljava/lang/String;)Z
    .locals 2

    .line 1852
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1853
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1854
    aget-object p1, p1, v1

    .line 1855
    const-string v0, "HTTP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    :cond_0
    const-string v0, "302"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private onSaveSuccess(Ljava/io/File;)V
    .locals 1

    .line 1798
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$17;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshUIAfterStartLoading()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 785
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private refreshUIAfterStop()V
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 772
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private savePhotoFromUrl(Ljava/lang/String;)V
    .locals 4

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Save photo from urlStr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1596
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1597
    const-string v1, "msdk_webview_save_photo"

    invoke-static {p0, v1}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    invoke-virtual {p0, v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Save Photo"

    .line 1599
    :goto_0
    const-string v2, "msdk_webview_sure"

    invoke-static {p0, v2}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1600
    invoke-virtual {p0, v2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "Sure"

    .line 1601
    :goto_1
    const-string v3, "msdk_webview_cancel"

    invoke-static {p0, v3}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1602
    invoke-virtual {p0, v3}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, "Cancel"

    .line 1603
    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1604
    new-instance v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1635
    new-instance p1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$16;

    invoke-direct {p1, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$16;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {v0, v3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1641
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1642
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private saveToAlbum(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Save photo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    .line 1692
    const-string v2, "Save photo success"

    const/16 v3, 0x64

    const/4 v4, 0x0

    const-string v5, "Save photo failed! fileName:"

    if-le v0, v1, :cond_2

    .line 1694
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1695
    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v1, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jpeg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "title"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1701
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1703
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1706
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 1707
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v1, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1708
    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1716
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1717
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1720
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 1711
    :try_start_2
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1712
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    .line 1716
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1717
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1724
    :cond_0
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1728
    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    :goto_1
    if-eqz v4, :cond_1

    .line 1716
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1717
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 1720
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1721
    :cond_1
    :goto_2
    throw p1

    .line 1733
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1734
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 1736
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    const-string v0, "MSDK"

    .line 1739
    :goto_3
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1740
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1741
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1744
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1745
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Save photo to path:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1748
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1749
    :try_start_7
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v4, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1750
    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1751
    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->onSaveSuccess(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1758
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1759
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 1762
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v4, v1

    goto :goto_6

    :catch_5
    move-exception p2

    move-object v4, v1

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_6

    :catch_6
    move-exception p2

    .line 1753
    :goto_4
    :try_start_9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1754
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v4, :cond_4

    .line 1758
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1759
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_4
    :goto_5
    return-void

    :goto_6
    if-eqz v4, :cond_5

    .line 1758
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1759
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_7

    :catch_7
    move-exception p2

    .line 1762
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 1763
    :cond_5
    :goto_7
    throw p1
.end method

.method private sendGetPhoneNumberRequest(Ljava/lang/String;II)V
    .locals 2

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send get phone number request urlStr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", carrier"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1816
    :try_start_0
    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0xc

    .line 1817
    invoke-virtual {p2, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v0, 0x0

    .line 1818
    invoke-virtual {p2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1819
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    .line 1820
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;

    invoke-direct {v0, p0, p1, p3}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$18;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;I)V

    .line 1843
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 1844
    invoke-virtual {p1, p2, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1846
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x3

    .line 1847
    const-string p2, "Request Exception"

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getPhoneNumberRequestResultCallbackToH5(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private sendMessageToGame(ILjava/lang/String;)V
    .locals 2

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parasJsonMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1284
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/gcloud/msdk/webview/WebViewIPCActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1285
    const-string v1, "ipc_webview_msg_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1286
    const-string p1, "ipc_webview_msg"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    const-string/jumbo p1, "webview_key_observer_id"

    iget p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->observerId:I

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1288
    const-string/jumbo p1, "webview_key_seq_id"

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->seqId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1289
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setAnimationDuration(I)V
    .locals 3

    .line 898
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 899
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 900
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 901
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 902
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 903
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private setWebViewMode(Landroid/content/Intent;)V
    .locals 2

    .line 526
    const-string v0, "MSDK_WEBVIEW_MODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GCloudMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 528
    sget-object p1, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->GCloudMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewMode;->SetWebViewMode(Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;)V

    goto :goto_0

    .line 530
    :cond_0
    sget-object p1, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->GameMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewMode;->SetWebViewMode(Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public callJs(Ljava/lang/String;)V
    .locals 2

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callJs parasJson : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_0

    .line 1256
    const-string/jumbo p1, "webView instance is null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 1259
    :cond_0
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$14;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleX5Intent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 425
    :cond_0
    const-string/jumbo v0, "webview_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 429
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleX5Intent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 431
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 432
    const-string p1, "WEBVIEW_X5_CLOSE_ANDROID"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 434
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->forceSysWebView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 437
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebViewActivity onActivityResult, requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_2

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 301
    :cond_1
    new-array p1, p2, [Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p1, p2

    .line 302
    :goto_0
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {p2, p1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 303
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_2

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz p1, :cond_6

    if-nez p3, :cond_3

    move-object p1, v1

    goto :goto_1

    .line 305
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 306
    :goto_1
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {p2, p1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 307
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_2

    :cond_4
    if-nez p2, :cond_6

    .line 314
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz p1, :cond_5

    .line 315
    invoke-interface {p1, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 316
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFileArray:Lcom/tencent/smtt/sdk/ValueCallback;

    .line 318
    :cond_5
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz p1, :cond_6

    .line 319
    invoke-interface {p1, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 320
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    :cond_6
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1584
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isBackDisable:Z

    if-eqz v0, :cond_0

    .line 1585
    const-string v0, "onBackPressed disable"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 1588
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 341
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->back:I

    if-ne p1, v0, :cond_1

    .line 343
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebChromeClient:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;

    if-eqz p1, :cond_7

    .line 345
    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$CustomWebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 349
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_0

    .line 352
    :cond_1
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->forward:I

    if-ne p1, v0, :cond_2

    .line 353
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 354
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->goForward()V

    goto :goto_0

    .line 356
    :cond_2
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->refresh:I

    if-ne p1, v0, :cond_3

    .line 357
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->reload()V

    goto :goto_0

    .line 358
    :cond_3
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->stop:I

    if-ne p1, v0, :cond_4

    .line 359
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    goto :goto_0

    .line 360
    :cond_4
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->return_app:I

    if-ne p1, v0, :cond_5

    .line 361
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->finish()V

    goto :goto_0

    .line 362
    :cond_5
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->more:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->land_more:I

    if-ne p1, v0, :cond_7

    .line 363
    :cond_6
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->initShareLayoutData()V

    .line 364
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mShareAnimMenu:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    if-eqz p1, :cond_7

    .line 365
    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->show()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 328
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 329
    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 331
    iput p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    .line 333
    :goto_0
    iget-boolean p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isFullScreen:Z

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setFullScreen(Z)V

    .line 334
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->checkToolbarStatus()V

    .line 335
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->initShareLayoutData()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 199
    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msdk_inner_webview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    :try_start_0
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->setActivityCur(Landroid/app/Activity;)V

    .line 208
    const-string p1, "BEGIN"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->handleX5Intent(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setFormat(I)V

    const/4 p1, 0x1

    .line 211
    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->requestWindowFeature(I)Z

    .line 212
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->init(Landroid/content/Context;)V

    .line 213
    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->layout_webview_activity:I

    if-nez v0, :cond_1

    .line 215
    const-string p1, "WebViewResID.layout_webview_activity == 0x00"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->finish()V

    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 221
    iput v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    .line 222
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    .line 225
    :cond_2
    iput p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebViewOrientation:I

    .line 228
    :goto_1
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$WebViewGestureListener;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$WebViewGestureListener;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-direct {p1, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mDetector:Landroid/view/GestureDetector;

    .line 229
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->handleIntent(Landroid/content/Intent;)V

    .line 230
    sget p1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->layout_webview_activity:I

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setContentView(I)V

    .line 232
    sget p1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->webview:I

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez p1, :cond_3

    .line 234
    const-string p1, "Fail to instance webview"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->finish()V

    return-void

    .line 238
    :cond_3
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$1;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$2;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 266
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->initWebView()V

    .line 267
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->loadUrl()V

    .line 268
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->initLayout()V

    .line 269
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->checkToolbarStatus()V

    .line 270
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->checkBackForwardBtnState()V

    .line 271
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->initAnimation()V

    .line 272
    iget-boolean p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isFullScreen:Z

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->setFullScreen(Z)V

    .line 274
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "handler-thread-activity"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 276
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$MsgHandler;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Landroid/os/Looper;)V

    .line 277
    invoke-static {}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->getInstance()Lcom/tencent/gcloud/msdk/webview/JsProcessor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->init(Landroid/os/Handler;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 378
    invoke-static {}, Lcom/tencent/gcloud/msdk/view/LoadingView;->destroy()V

    .line 379
    const-string v0, "END"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewMode;->GetWebViewMode()Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    move-result-object v0

    sget-object v1, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->GCloudMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "{\"MSDK_WEBVIEW_MODE\":\"GCloudMode\"}"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/16 v1, 0x15

    .line 381
    invoke-direct {p0, v1, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->sendMessageToGame(ILjava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->removeAllViews()V

    .line 384
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 385
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 392
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 397
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    .line 400
    :cond_4
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->deleteGamelinePicture()V

    .line 401
    sget-object v0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->DefaultMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewMode;->SetWebViewMode(Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 283
    const-string v0, "onNewIntent invoked"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 284
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isAllowReload(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->handleIntent(Landroid/content/Intent;)V

    .line 289
    const-string/jumbo v0, "webview_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->loadUrl()V

    :cond_1
    return-void

    .line 285
    :cond_2
    :goto_0
    const-string p1, "not allow onNewIntent WebViewActivity"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 407
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 415
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 416
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 2

    const/16 v0, 0x400

    if-eqz p1, :cond_1

    .line 713
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewCommonUtil;->isSystemFullScreenSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 719
    :cond_1
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewCommonUtil;->isSystemFullScreenSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 720
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 724
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->checkToolbarStatus()V

    .line 726
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->isFullScreen:Z

    return-void
.end method
