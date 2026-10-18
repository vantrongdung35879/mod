.class public Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;
.super Lcom/beetalk/sdk/plugin/impl/tiktok/TikTokBasePlugin;
.source "TiktokVideoSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/tiktok/TikTokBasePlugin<",
        "Lcom/garena/android/share/model/ShareContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "tiktok_share"


# instance fields
.field private holder:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TikTokBasePlugin;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->holder:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    return-void
.end method

.method private createShareRequest(Lcom/garena/android/share/model/ShareContent;Ljava/util/ArrayList;)Lcom/bytedance/sdk/open/tiktok/share/Share$Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/android/share/model/ShareContent;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/open/tiktok/share/Share$Request;"
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->DEFAULT:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    .line 157
    new-instance v1, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    invoke-direct {v1}, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;-><init>()V

    .line 158
    instance-of v2, p1, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;

    if-nez v2, :cond_0

    instance-of v3, p1, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;

    if-eqz v3, :cond_1

    .line 159
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->GREEN_SCREEN:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    .line 161
    :cond_1
    instance-of p1, p1, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;

    if-nez p1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    .line 164
    :cond_2
    new-instance p1, Lcom/bytedance/sdk/open/tiktok/base/VideoObject;

    invoke-direct {p1}, Lcom/bytedance/sdk/open/tiktok/base/VideoObject;-><init>()V

    .line 165
    iput-object p2, p1, Lcom/bytedance/sdk/open/tiktok/base/VideoObject;->mVideoPaths:Ljava/util/ArrayList;

    .line 166
    iput-object p1, v1, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;->mMediaObject:Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;

    goto :goto_1

    .line 162
    :cond_3
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/open/tiktok/base/ImageObject;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/open/tiktok/base/ImageObject;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, v1, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;->mMediaObject:Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;

    .line 169
    :goto_1
    new-instance p1, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;

    invoke-direct {p1}, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;-><init>()V

    .line 170
    iput-object v1, p1, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mMediaContent:Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    .line 171
    const-class p2, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokShareResponseActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->callerLocalEntry:Ljava/lang/String;

    .line 172
    iput-object v0, p1, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mShareFormat:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    return-object p1
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->holder:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    if-eqz v0, :cond_0

    .line 221
    invoke-static {v0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;->-$$Nest$fgetactivityRef(Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static grantPermission(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 142
    const-string v0, "com.zhiliaoapp.musically"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 147
    const-string v0, "com.ss.android.ugc.trill"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method private prepareGreenScreenImageFilePaths(Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;->getImageContent()Lcom/garena/android/share/model/ShareImageContent;

    move-result-object p1

    const-string/jumbo v0, "tiktok_share"

    invoke-static {p1, v0}, Lcom/garena/android/share/util/ShareUtils;->getImageUri(Lcom/garena/android/share/model/ShareImageContent;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 131
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->grantPermission(Landroid/content/Context;Landroid/net/Uri;)V

    .line 132
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private prepareGreenScreenVideoFilePaths(Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;->getVideoContent()Lcom/garena/android/share/model/ShareVideoContent;

    move-result-object p1

    const-string/jumbo v0, "tiktok_share"

    invoke-static {p1, v0}, Lcom/garena/android/share/util/ShareUtils;->getVideoUri(Lcom/garena/android/share/model/ShareVideoContent;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 137
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->grantPermission(Landroid/content/Context;Landroid/net/Uri;)V

    .line 138
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private prepareImageFilePaths(Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;->getImageContents()Ljava/util/List;

    move-result-object p1

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/garena/android/share/model/ShareImageContent;

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tiktok_share"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/garena/android/share/util/ShareUtils;->getImageUri(Lcom/garena/android/share/model/ShareImageContent;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->grantPermission(Landroid/content/Context;Landroid/net/Uri;)V

    .line 112
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private prepareVideoFilePaths(Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;->getVideoContents()Ljava/util/List;

    move-result-object p1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/garena/android/share/model/ShareVideoContent;

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tiktok_share"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/garena/android/share/util/ShareUtils;->getVideoUri(Lcom/garena/android/share/model/ShareVideoContent;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->grantPermission(Landroid/content/Context;Landroid/net/Uri;)V

    .line 124
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected executeAction(Landroid/app/Activity;Lcom/garena/android/share/model/ShareContent;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->holder:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;->unregisterReceiver(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->holder:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    .line 64
    invoke-static {p1}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->create(Landroid/app/Activity;)Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "Tiktok SDK hasn\'t initialized, have you configured tiktok secret key?"

    invoke-virtual {p0, p1, p2, v0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    return-void

    .line 69
    :cond_1
    invoke-static {p1}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->of(Landroid/app/Activity;)Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->prepareFilePaths(Lcom/garena/android/share/model/ShareContent;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;Lcom/garena/android/share/model/ShareContent;Landroid/app/Activity;Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;)V

    sget-object p1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 71
    invoke-virtual {v1, v2, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 44
    check-cast p2, Lcom/garena/android/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->executeAction(Landroid/app/Activity;Lcom/garena/android/share/model/ShareContent;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 53
    const-string/jumbo v0, "tiktok.share"

    return-object v0
.end method

.method public handleSDKError(Landroid/content/Intent;)V
    .locals 2

    .line 188
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleSDKResponse(Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V
    .locals 4

    .line 177
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0, v0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->publishResult(Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    .line 182
    :cond_0
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleUnknownBroadcastError()V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleUserInTiktokResponse()V
    .locals 2

    .line 195
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->publishResult(Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$executeAction$0$com-beetalk-sdk-plugin-impl-tiktok-TiktokVideoSharePlugin(Lcom/garena/android/share/model/ShareContent;Landroid/app/Activity;Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p4}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p4}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->createShareRequest(Lcom/garena/android/share/model/ShareContent;Ljava/util/ArrayList;)Lcom/bytedance/sdk/open/tiktok/share/Share$Request;

    move-result-object p1

    .line 75
    invoke-static {p2}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;->register(Landroid/app/Activity;)Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;

    move-result-object p4

    .line 76
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    invoke-direct {v0, p2, p4}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;)V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->holder:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    .line 77
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->share(Lcom/bytedance/sdk/open/tiktok/share/Share$Request;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0, p2, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->publishResult(Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    .line 82
    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p4}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$prepareFilePaths$1$com-beetalk-sdk-plugin-impl-tiktok-TiktokVideoSharePlugin(Lcom/garena/android/share/model/ShareContent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    instance-of v0, p1, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->prepareImageFilePaths(Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    instance-of v0, p1, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;

    if-eqz v0, :cond_1

    .line 96
    check-cast p1, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->prepareGreenScreenImageFilePaths(Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 97
    :cond_1
    instance-of v0, p1, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;

    if-eqz v0, :cond_2

    .line 98
    check-cast p1, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->prepareVideoFilePaths(Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 99
    :cond_2
    instance-of v0, p1, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;

    if-eqz v0, :cond_3

    .line 100
    check-cast p1, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->prepareGreenScreenVideoFilePaths(Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 101
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public prepareFilePaths(Lcom/garena/android/share/model/ShareContent;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/android/share/model/ShareContent;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Lcom/garena/android/share/model/ShareContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;Lcom/garena/android/share/model/ShareContent;)V

    invoke-static {v0, p2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method protected publishResult(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/beetalk/sdk/plugin/impl/tiktok/TikTokBasePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    .line 211
    iget-object p2, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->holder:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    if-eqz p2, :cond_0

    .line 213
    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;->unregisterReceiver(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->holder:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    :cond_0
    return-void
.end method
