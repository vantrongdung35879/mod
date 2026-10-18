.class public final Lcom/beetalk/sdk/exts/WebViewExtsKt;
.super Ljava/lang/Object;
.source "WebViewExts.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewExts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewExts.kt\ncom/beetalk/sdk/exts/WebViewExtsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a#\u0010\u0005\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0007*\u00020\u00022\u0006\u0010\u0008\u001a\u0002H\u0006H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u0018\u0010\n\u001a\u00020\u0004*\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "loadUrlWithAutoSwitch",
        "",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "registerJsInterface",
        "T",
        "Lcom/beetalk/sdk/widget/JsInterface;",
        "jsInterface",
        "(Landroid/webkit/WebView;Lcom/beetalk/sdk/widget/JsInterface;)V",
        "toUrlParams",
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
.method public static synthetic $r8$lambda$42TrpogoiBru4jWew6lOgbMDbs8(Ljava/lang/String;)Lkotlin/Result;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/exts/WebViewExtsKt;->loadUrlWithAutoSwitch$lambda$0(Ljava/lang/String;)Lkotlin/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D0QGQRs-uEyuH5Hn-8ciZfXMvXA(Landroid/webkit/WebView;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lkotlin/Result;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/exts/WebViewExtsKt;->loadUrlWithAutoSwitch$lambda$3(Landroid/webkit/WebView;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lkotlin/Result;

    move-result-object p0

    return-object p0
.end method

.method public static final loadUrlWithAutoSwitch(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    new-instance v1, Lcom/beetalk/sdk/exts/WebViewExtsKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/beetalk/sdk/exts/WebViewExtsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task$Companion;->callInBackground(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/beetalk/sdk/exts/WebViewExtsKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/exts/WebViewExtsKt$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/exts/BoltsExtKt;->continueOnMain(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    return-void
.end method

.method private static final loadUrlWithAutoSwitch$lambda$0(Ljava/lang/String;)Lkotlin/Result;
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->autoSwitchHost-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final loadUrlWithAutoSwitch$lambda$3(Landroid/webkit/WebView;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lkotlin/Result;
    .locals 2

    const-string v0, "$this_loadUrlWithAutoSwitch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Result;

    if-eqz p2, :cond_1

    .line 36
    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_1
    if-eqz p2, :cond_3

    .line 37
    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    invoke-static {p2}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final registerJsInterface(Landroid/webkit/WebView;Lcom/beetalk/sdk/widget/JsInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/beetalk/sdk/widget/JsInterface;",
            ">(",
            "Landroid/webkit/WebView;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Lcom/beetalk/sdk/widget/JsInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final toUrlParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    const-string p0, "&"

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance p0, Lcom/beetalk/sdk/exts/WebViewExtsKt$toUrlParams$1;

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/exts/WebViewExtsKt$toUrlParams$1;-><init>(Ljava/lang/String;)V

    move-object v7, p0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
