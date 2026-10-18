.class public Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;
.super Ljava/lang/Object;
.source "MSDKPopupManager.java"


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "msdk_dialog_fragment"

.field private static final MSDK_POLICY_DIALOG_BG:Ljava/lang/String; = "msdk_policy_dialog_bg"

.field private static final MSDK_POP_DEFAULT_COLOR:Ljava/lang/String; = "#CCFFFFFF"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private policyLayout:Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

.field private volatile preventShowDialogs:Z

.field private richTextLayout:Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;

.field private webLayout:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->preventShowDialogs:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->richTextLayout:Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;

    return-object p0
.end method

.method static synthetic access$002(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->richTextLayout:Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->webLayout:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->webLayout:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->policyLayout:Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;)Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->policyLayout:Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->preventShowDialogs:Z

    return p0
.end method

.method static synthetic access$302(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->preventShowDialogs:Z

    return p1
.end method

.method static synthetic access$400(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->showDialogFragment(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)V

    return-void
.end method

.method static synthetic access$500(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->handleAction(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    return-void
.end method

.method private getValidDecryptedHtmlContent(Landroid/content/Context;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)Ljava/lang/String;
    .locals 4

    .line 142
    invoke-virtual {p2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isAssetsConfig()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->readAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 144
    array-length v0, p1

    if-lez v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/Md5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 151
    :cond_0
    iget-object p1, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "assets config is invalid, uri: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_1
    iget-object p1, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "assets html content is empty, uri: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2, p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->getPopupFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 159
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->read(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 160
    array-length v3, v0

    if-lez v3, :cond_4

    .line 161
    invoke-static {p1, v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->decrypt(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/Md5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 167
    :cond_3
    iget-object p1, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "html content is invalid, uri: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_4
    iget-object p1, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "html content is empty, uri: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_5
    iget-object p1, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "no html file, uri: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 176
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private handleAction(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V
    .locals 1

    .line 519
    sget-object v0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->CANCEL:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    .line 520
    iput-boolean p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->preventShowDialogs:Z

    return-void

    .line 523
    :cond_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    if-ne p2, v0, :cond_1

    iget-object p2, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->reportUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 524
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$8;

    invoke-direct {v0, p0, p1, p3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$8;-><init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p1, 0xa

    .line 535
    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 536
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private showDialogAtMainThread(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;ZLcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
    .locals 4

    .line 451
    invoke-virtual {p0, p2, p3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->shouldPopup(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Z)Z

    move-result p3

    if-nez p3, :cond_0

    .line 452
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string p2, "should not show this dialog"

    invoke-interface {p4, p1, p2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    return-void

    .line 456
    :cond_0
    iget-object p3, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->CONDITION:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_3

    .line 457
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "checkCanShow, scene = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    .line 458
    invoke-static {p2}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->queryCondition(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 459
    iget v0, p3, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->code:I

    if-nez v0, :cond_1

    iget v0, p3, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->needPopup:I

    if-eq v0, v2, :cond_4

    .line 460
    :cond_1
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    if-nez p3, :cond_2

    const-string p2, "null"

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    .line 462
    const-string p2, "should not show this conditional dialog, queryConditionRet = %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 460
    invoke-interface {p4, p1, p2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 p3, 0x0

    .line 467
    :cond_4
    iget-object v0, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->DEFAULT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    if-ne v0, v3, :cond_5

    .line 468
    invoke-direct {p0, p1, p2, p4}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->showPolicyDialog(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V

    goto :goto_2

    .line 470
    :cond_5
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$9;->$SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$ContentType:[I

    iget-object v3, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    invoke-virtual {v3}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    .line 483
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    iget-object p2, p2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    .line 484
    const-string p2, "should not show this dialog, contentType is error: %d"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 483
    invoke-interface {p4, p1, p2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 485
    const-string p1, "MSDKPopupManager.showDialogAtMainThread, richTextContent is empty"

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    .line 478
    const-string p3, ""

    goto :goto_1

    :cond_7
    iget-object p3, p3, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->extra:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->showRemoteHtmlDialog(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V

    goto :goto_2

    .line 475
    :cond_8
    invoke-direct {p0, p1, p2, p4}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->showLocalHtmlDialog(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V

    goto :goto_2

    .line 472
    :cond_9
    invoke-direct {p0, p1, p2, p4}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->showRichTextDialog(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V

    :goto_2
    return-void
.end method

.method private showDialogFragment(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)V
    .locals 3

    .line 180
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "msdk_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p2}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->loadLayout(Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;)V

    .line 184
    iget-object p2, p3, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    sget-object p3, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->DEFAULT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    if-ne p2, p3, :cond_0

    .line 185
    sget p2, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->BG_IMAGE_RES:I

    const-string p3, "msdk_policy_dialog_bg"

    .line 187
    invoke-static {p1, p3}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 185
    invoke-virtual {v0, p2, p1}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->setBackgroundRes(II)V

    goto :goto_0

    .line 189
    :cond_0
    sget p1, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->BG_COLOR:I

    const-string p2, "#CCFFFFFF"

    .line 191
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 189
    invoke-virtual {v0, p1, p2}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->setBackgroundRes(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showLocalHtmlDialog(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
    .locals 9

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->getValidDecryptedHtmlContent(Landroid/content/Context;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 331
    new-instance v8, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$6;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$6;-><init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Ljava/util/concurrent/CountDownLatch;Landroid/app/Activity;)V

    invoke-virtual {p1, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 356
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    .line 359
    sget-object p2, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v0, "showLocalHtmlDialog, countDownLatch.wait error"

    invoke-interface {p3, p2, v0}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 361
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MSDKPopupManager.showLocalHtmlDialog (countDownLatch.wait) error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 365
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string p2, "showLocalHtmlDialog, localHtmlContent is empty"

    invoke-interface {p3, p1, p2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 367
    :cond_2
    const-string p1, "MSDKPopupManager.showLocalHtmlDialog, localHtmlContent is empty"

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showPolicyDialog(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
    .locals 9

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->getValidDecryptedHtmlContent(Landroid/content/Context;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 203
    new-instance v8, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, v7

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$4;-><init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Ljava/util/concurrent/CountDownLatch;Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    .line 246
    sget-object p2, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v0, "showPolicyDialog, countDownLatch.wait error"

    invoke-interface {p3, p2, v0}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 248
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MSDKPopupManager.showPolicyDialog (countDownLatch.wait) error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 252
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string p2, "showPolicyDialog, richTextContent is empty"

    invoke-interface {p3, p1, p2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 254
    :cond_2
    const-string p1, "MSDKPopupManager.showPolicyDialog, richTextContent is empty"

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showRemoteHtmlDialog(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
    .locals 12

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v8, p4

    .line 375
    const-string v1, "city"

    const-string v2, "province"

    const-string v4, "country"

    iget-object v5, v3, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 376
    iget-object v5, v3, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    .line 378
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, p3

    .line 379
    invoke-static {v5, p3}, Lcom/itop/gcloud/msdk/popup/utils/UriUtils;->appendParamsByJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 382
    :cond_0
    const-string v6, "lang_popup"

    const-string v7, "itop"

    const-string v9, ""

    invoke-static {p1, v7, v6, v9}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupSpUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 383
    const-string v10, "region_popup"

    invoke-static {p1, v7, v10, v9}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupSpUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 388
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-static {v10, v4, v9}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    :try_start_1
    invoke-static {v10, v2, v9}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    :try_start_2
    invoke-static {v10, v1, v9}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v11, v9

    goto :goto_0

    :catch_1
    move-object v7, v9

    move-object v11, v7

    .line 393
    :catch_2
    :goto_0
    const-string v10, "shouldAppendRegion error"

    invoke-static {v10}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 395
    :goto_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 396
    const-string v10, "lang"

    invoke-virtual {v5, v10, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 397
    invoke-virtual {v5, v4, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 398
    invoke-virtual {v5, v2, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 399
    invoke-virtual {v5, v1, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 400
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popupRegionCountry = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",popupRegionProvince = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",popupRegionCity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webView will loadRequest the popupUri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    .line 405
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 407
    new-instance v10, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v5, p4

    move-object v6, v9

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$7;-><init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Ljava/util/concurrent/CountDownLatch;Landroid/app/Activity;)V

    invoke-virtual {p1, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    :try_start_3
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_1

    .line 435
    sget-object v0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v2, "showRemoteHtmlDialog, countDownLatch.wait error"

    invoke-interface {v8, v0, v2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 437
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MSDKPopupManager.showRemoteHtmlDialog (countDownLatch.wait) error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    .line 441
    sget-object v0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v1, "showRemoteHtmlDialog, uri is empty"

    invoke-interface {v8, v0, v1}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 443
    :cond_3
    const-string v0, "MSDKPopupManager.showRemoteHtmlDialog, uri is empty"

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private showRichTextDialog(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
    .locals 9

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->getValidDecryptedHtmlContent(Landroid/content/Context;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 265
    new-instance v8, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$5;-><init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p1, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    .line 313
    sget-object p2, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v0, "showRichTextDialog, countDownLatch.wait error"

    invoke-interface {p3, p2, v0}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 315
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MSDKPopupManager.showRichTextDialog (countDownLatch.wait) error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 319
    sget-object p1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string p2, "showRichTextDialog, richTextContent is empty"

    invoke-interface {p3, p1, p2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    .line 321
    :cond_2
    const-string p1, "MSDKPopupManager.showRichTextDialog, richTextContent is empty"

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public shouldPopup(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 492
    invoke-virtual {p1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    move-result-object v1

    .line 497
    iget-object v2, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validPlatform:Ljava/lang/String;

    iget v1, v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->channelID:I

    invoke-static {v2, v1}, Lcom/itop/gcloud/msdk/popup/utils/CommonUtils;->checkValidPlatform(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    const-string p1, "channelID is invalid"

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    return v0

    .line 501
    :cond_1
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->currentTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 502
    iget-wide v3, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    iget-wide v3, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validTime:J

    cmp-long v7, v1, v3

    if-ltz v7, :cond_3

    :cond_2
    iget-wide v3, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->expireTime:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    iget-wide v3, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->expireTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 504
    :cond_3
    const-string/jumbo p1, "time is incorrect"

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    return v0

    :cond_4
    if-nez p2, :cond_5

    .line 507
    iget-object p2, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->frequency:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ONCE:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    if-ne p2, v1, :cond_5

    .line 508
    iget-object p2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->applicationContext:Landroid/content/Context;

    const-string v1, "MSDKPopupFrequencyOnce"

    iget-object p1, p1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sig:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupSpUtils;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 509
    const-string p1, "dialog can not show again"

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p1, 0x1

    return p1

    .line 493
    :cond_6
    :goto_0
    const-string p1, "config is invalid"

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    return v0
.end method

.method public show(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Z)V
    .locals 1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Z)V

    return-void
.end method

.method public declared-synchronized show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;",
            ">;",
            "Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->preventShowDialogs:Z

    .line 71
    new-instance v1, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;-><init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 113
    iget-boolean v2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->preventShowDialogs:Z

    if-nez v2, :cond_0

    .line 115
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    new-instance v3, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;

    invoke-direct {v3, p0, v0, v1, p3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;-><init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;IILcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V

    invoke-direct {p0, p1, v2, p4, v3}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->showDialogAtMainThread(Landroid/app/Activity;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;ZLcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    new-instance p2, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$3;

    invoke-direct {p2, p0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$3;-><init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
