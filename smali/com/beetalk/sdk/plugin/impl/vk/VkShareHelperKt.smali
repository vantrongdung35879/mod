.class public final Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt;
.super Ljava/lang/Object;
.source "VkShareHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVkShareHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VkShareHelper.kt\ncom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,89:1\n470#2:90\n470#2:91\n*S KotlinDebug\n*F\n+ 1 VkShareHelper.kt\ncom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt\n*L\n28#1:90\n35#1:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0016\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0000\u001a\n\u0010\u000c\u001a\u00020\r*\u00020\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "getVkShareResourceColor",
        "",
        "imageFileUriToBitmap",
        "Landroid/graphics/Bitmap;",
        "uri",
        "Landroid/net/Uri;",
        "imageUriToBitmap",
        "loadUserInfo",
        "",
        "onSuccess",
        "Lcom/beetalk/sdk/plugin/GGPluginCallback;",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;",
        "highlight",
        "Landroid/text/SpannableString;",
        "",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$dabFvhW1tP67rMSwm0aD12swQ_s()Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt;->loadUserInfo$lambda$6()Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$sgt9lfRXNOFbb7MRBEknbwyVxfs(Lcom/beetalk/sdk/plugin/GGPluginCallback;Lcom/facebook/bolts/Task;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt;->loadUserInfo$lambda$7(Lcom/beetalk/sdk/plugin/GGPluginCallback;Lcom/facebook/bolts/Task;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final getVkShareResourceColor()I
    .locals 1

    .line 35
    const-string v0, "#0077FF"

    .line 91
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final highlight(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/text/SpannableString;

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#0077FF"

    .line 90
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 28
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0x11

    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static final imageFileUriToBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3

    const-string/jumbo v0, "uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 62
    invoke-static {v0, p0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v0, p0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decode uri to bitmap failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :cond_2
    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final imageUriToBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    const-string/jumbo v0, "uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 42
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 43
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    .line 44
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 42
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 43
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 42
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_2

    .line 50
    :cond_2
    invoke-static {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt;->imageFileUriToBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public static final loadUserInfo(Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task$Companion;->callInBackground(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    .line 87
    sget-object p0, Lcom/facebook/bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 78
    invoke-virtual {v0, v1, p0}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    return-void
.end method

.method private static final loadUserInfo$lambda$6()Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;
    .locals 1

    .line 76
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKUserGetCommand;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKUserGetCommand;-><init>()V

    check-cast v0, Lcom/vk/api/sdk/internal/ApiCommand;

    .line 75
    invoke-static {v0}, Lcom/vk/api/sdk/VK;->executeSync(Lcom/vk/api/sdk/internal/ApiCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;

    return-object v0
.end method

.method private static final loadUserInfo$lambda$7(Lcom/beetalk/sdk/plugin/GGPluginCallback;Lcom/facebook/bolts/Task;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$onSuccess"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p0, p1}, Lcom/beetalk/sdk/plugin/GGPluginCallback;->onPluginResult(Ljava/lang/Object;)V

    .line 87
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
