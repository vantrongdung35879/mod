.class public Lcom/tencent/gcloud/msdk/webview/WebViewResID;
.super Ljava/lang/Object;
.source "WebViewResID.java"


# static fields
.field public static anim_titlebar_hide:I

.field public static anim_titlebar_show:I

.field public static anim_toolbar_hide:I

.field public static anim_toolbar_show:I

.field public static back:I

.field public static backUnclickable:I

.field public static color_toolbar_invisible:I

.field public static color_toolbar_visible:I

.field public static dimen_fling_limit_x:I

.field public static dimen_fling_limit_y:I

.field public static dimen_titlebar_height:I

.field public static dlg_btn_cancel:I

.field public static dlg_gridview:I

.field public static drawable_open_by_otherbrowser:I

.field public static forward:I

.field public static forwardUnclickable:I

.field public static itemImage:I

.field public static itemText:I

.field public static land_more:I

.field public static layout_share_item:I

.field public static layout_webview_activity:I

.field public static more:I

.field public static openByBrowser:I

.field public static playout:I

.field public static progress:I

.field public static refresh:I

.field public static return_app:I

.field public static stop:I

.field public static str_cancel:I

.field public static str_confirm:I

.field public static str_openbrowser:I

.field public static str_recom_mtt_content:I

.field public static str_recom_mtt_title:I

.field public static str_untitle_share:I

.field public static str_upload_file_title:I

.field public static titleBar:I

.field public static toolbar:I

.field public static webTitle:I

.field public static webview:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 83
    const-string v1, "msdk_webview_activity"

    const-string v2, "layout"

    invoke-static {p0, v1, v2, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->layout_webview_activity:I

    .line 86
    const-string v1, "playout"

    const-string v3, "id"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->playout:I

    .line 87
    const-string/jumbo v1, "webview"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->webview:I

    .line 88
    const-string/jumbo v1, "webTitle"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->webTitle:I

    .line 89
    const-string v1, "refresh"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->refresh:I

    .line 90
    const-string/jumbo v1, "stop"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->stop:I

    .line 91
    const-string v1, "back"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->back:I

    .line 92
    const-string v1, "backUnclickable"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->backUnclickable:I

    .line 93
    const-string v1, "openByBrowser"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->openByBrowser:I

    .line 94
    const-string v1, "forward"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->forward:I

    .line 95
    const-string v1, "forwardUnclickable"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->forwardUnclickable:I

    .line 96
    const-string v1, "return_app"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->return_app:I

    .line 97
    const-string v1, "more"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->more:I

    .line 102
    const-string/jumbo v1, "titlebar"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->titleBar:I

    .line 103
    const-string/jumbo v1, "toolbar"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->toolbar:I

    .line 105
    const-string v1, "landMore"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->land_more:I

    .line 108
    const-string v1, "msdk_webview_share_otherbrowser"

    const-string v3, "drawable"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->drawable_open_by_otherbrowser:I

    .line 111
    const-string v1, "recom_mtt_title"

    const-string/jumbo v3, "string"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_recom_mtt_title:I

    .line 112
    const-string v1, "recom_mtt_content"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_recom_mtt_content:I

    .line 113
    const-string v1, "confirm"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_confirm:I

    .line 114
    const-string v1, "cancel"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_cancel:I

    .line 116
    const-string v1, "openbrowser"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_openbrowser:I

    .line 118
    const-string v1, "msdk_upload_file_title"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_upload_file_title:I

    .line 119
    const-string v1, "msdk_untitle_share"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_untitle_share:I

    .line 122
    const-string/jumbo v1, "toolbar_visible"

    const-string v3, "color"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->color_toolbar_visible:I

    .line 123
    const-string/jumbo v1, "toolbar_invisible"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->color_toolbar_invisible:I

    .line 126
    const-string/jumbo v1, "titlebar_height"

    const-string v3, "dimen"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->dimen_titlebar_height:I

    .line 127
    const-string v1, "fling_limit_x"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->dimen_fling_limit_x:I

    .line 128
    const-string v1, "fling_limit_y"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->dimen_fling_limit_y:I

    .line 131
    const-string v1, "msdk_webview_anim_toolbar_hide"

    const-string v3, "anim"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->anim_toolbar_hide:I

    .line 132
    const-string v1, "msdk_webview_anim_toolbar_show"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->anim_toolbar_show:I

    .line 133
    const-string v1, "msdk_webview_anim_titlebar_hide"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->anim_titlebar_hide:I

    .line 134
    const-string v1, "msdk_webview_anim_titlebar_show"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->anim_titlebar_show:I

    .line 136
    const-string v1, "msdk_webview_share_item"

    invoke-static {p0, v1, v2, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->layout_share_item:I

    return-void
.end method
