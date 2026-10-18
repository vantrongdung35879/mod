.class public Lcom/tencent/gcloud/msdk/common/GarenaUtil;
.super Ljava/lang/Object;
.source "GarenaUtil.java"


# static fields
.field private static isInited:Z = false

.field private static mGareanAppId:Ljava/lang/String;

.field private static mGarenaAppKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetChannelFromGGPlatform(I)I
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-eq p0, v0, :cond_7

    const/16 v0, 0xe

    const/4 v2, 0x6

    if-eq p0, v2, :cond_6

    const/16 v3, 0x8

    if-eq p0, v3, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p0, v3, :cond_4

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/16 v2, 0xd

    if-eq p0, v2, :cond_7

    if-eq p0, v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    goto :goto_0

    :cond_2
    const/16 v1, 0xf

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :cond_6
    const/16 v1, 0xe

    :cond_7
    :goto_0
    return v1
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p0, p1, p2}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->compressBitmap(Landroid/graphics/Bitmap;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static checkFBMessengerInstalled()Z
    .locals 2

    .line 233
    const-string v0, "com.facebook.orca"

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static compressBitmap(Landroid/graphics/Bitmap;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 216
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/gcloud/msdk/common/GarenaUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil$2;-><init>(Landroid/graphics/Bitmap;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] unknown error "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 228
    new-instance p2, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {p2, v1, v0, p0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V

    :goto_0
    return-void
.end method

.method public static getGarenaAppID()Ljava/lang/String;
    .locals 2

    .line 43
    const-string v0, "GARENA_APP_SDK_ASSIGN_ID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->mGareanAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static getGarenaAppKey()Ljava/lang/String;
    .locals 2

    .line 48
    const-string v0, "GARENA_APP_SDK_KEY"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->mGarenaAppKey:Ljava/lang/String;

    return-object v0
.end method

.method private static getImagePath(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 275
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 277
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "_data"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 280
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 284
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1
.end method

.method public static getLoginPlatformByChannel(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 2

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "Google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "Garena"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "Twitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "Facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "Guest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "Email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "Line"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 137
    invoke-static {v1}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->obtainFromPlatformType(I)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object p0

    goto :goto_2

    .line 121
    :pswitch_0
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_2

    .line 115
    :pswitch_1
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_2

    .line 133
    :pswitch_2
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_2

    .line 118
    :pswitch_3
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_2

    .line 124
    :pswitch_4
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_2

    .line 130
    :pswitch_5
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_2

    .line 127
    :pswitch_6
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x242414 -> :sswitch_6
        0x3ff5b7c -> :sswitch_5
        0x41f3db8 -> :sswitch_4
        0x217bfee6 -> :sswitch_3
        0x2c9a4253 -> :sswitch_2
        0x7eb45720 -> :sswitch_1
        0x7f784a59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRecallSp()Landroid/content/SharedPreferences;
    .locals 3

    .line 337
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 340
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "msdk_garena_recall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSubChannelByPlatform(I)Ljava/lang/String;
    .locals 2

    .line 428
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->obtainFromPlatformType(I)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object p0

    .line 429
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 432
    :cond_0
    sget-object v1, Lcom/tencent/gcloud/msdk/common/GarenaUtil$3;->$SwitchMap$com$beetalk$sdk$GGLoginSession$SessionProvider:[I

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 444
    :pswitch_0
    const-string p0, "Email"

    return-object p0

    .line 442
    :pswitch_1
    const-string p0, "Google"

    return-object p0

    .line 440
    :pswitch_2
    const-string p0, "Line"

    return-object p0

    .line 438
    :pswitch_3
    const-string p0, "Guest"

    return-object p0

    .line 436
    :pswitch_4
    const-string p0, "Facebook"

    return-object p0

    .line 434
    :pswitch_5
    const-string p0, "Garena"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static handleImageOnKitKat(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .line 245
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 246
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v2, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 250
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getImagePath(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 251
    :cond_0
    const-string v2, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 252
    const-string p0, "content://downloads/public_downloads"

    .line 253
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 254
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 252
    invoke-static {p0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    .line 255
    invoke-static {p0, v1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getImagePath(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 257
    :cond_1
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    invoke-static {p0, v1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getImagePath(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 259
    :cond_2
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static hasRecallSuccessFlag()Z
    .locals 3

    .line 378
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getRecallSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    const-string v2, "recall_success_flag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 6

    .line 53
    sget-boolean v0, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isInited:Z

    if-nez v0, :cond_6

    .line 54
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "[ "

    if-eqz v0, :cond_5

    .line 64
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->GGGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "5.36.007"

    const-string v4, "Garena"

    invoke-static {v3, v4, v0, p0, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->initialize(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getGarenaAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] config GARENA_APP_SDK_ASSIGN_ID is empty !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getGarenaAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->setAppId(Ljava/lang/String;)V

    .line 78
    :goto_0
    const-string v0, "GARENA_LOGIN_TITLE"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->setGarenaLoginTitle(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 83
    invoke-static {v4, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getDebugConfig(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    sget-object v4, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    :goto_1
    invoke-static {v4}, Lcom/beetalk/sdk/GGPlatform;->GGSetEnvironment(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V

    .line 88
    const-string v4, "GARENA_DEBUG_LOG_ENABLE"

    invoke-static {v4, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] GARENA_DEBUG_LOG_ENABLE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->GGEnableDebugLog()V

    .line 95
    :cond_3
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getGarenaAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]config GARENA_APP_SDK_KEY is empty !"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 98
    :cond_4
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getGarenaAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/beetalk/sdk/GGPlatform;->setAppKey(Ljava/lang/String;)V

    .line 101
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] Garena app id "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->mGareanAppId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "isDebug : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", app key : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->mGarenaAppKey:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", login title : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 103
    sput-boolean p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isInited:Z

    goto :goto_3

    .line 106
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] must execute MSDKPlatform.initialize() first !!!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static isLinkFormCorrect(Ljava/lang/String;)Z
    .locals 1

    .line 290
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRecallEnabled()Z
    .locals 3

    .line 347
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getRecallSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    const-string v2, "recall_enable"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSaveTokenEnabled()Z
    .locals 3

    .line 363
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getRecallSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 364
    const-string v2, "save_token_enable"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static mapRecallErrorCodeToRetCode(Lcom/garena/pay/android/GGErrorCode;)I
    .locals 2

    const/16 v0, 0x270f

    if-nez p0, :cond_0

    return v0

    .line 401
    :cond_0
    sget-object v1, Lcom/tencent/gcloud/msdk/common/GarenaUtil$3;->$SwitchMap$com$garena$pay$android$GGErrorCode:[I

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static queryAndCompressBitmap(Ljava/lang/String;ILjava/lang/String;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] imagePath is empty"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 155
    new-instance p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string p2, "imagePath is empty"

    const/16 v0, 0xb

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V

    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;-><init>(Ljava/lang/String;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;Ljava/lang/String;I)V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/gcloud/msdk/tools/IT;->queryBitmap(Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;[Ljava/lang/String;)V

    return-void
.end method

.method public static setRecallEnable(Z)V
    .locals 2

    .line 352
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getRecallSp()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recall_enable"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setRecallSuccessFlag(Z)V
    .locals 2

    .line 383
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getRecallSp()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recall_success_flag"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setSaveTokenEnable(Z)V
    .locals 2

    .line 368
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getRecallSp()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "save_token_enable"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
