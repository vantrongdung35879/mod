.class public Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;
.super Ljava/lang/Object;
.source "MDefaultIntercept.java"

# interfaces
.implements Lcom/centauri/oversea/business/h5/webview/IIntercept;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept$CacheMetaInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MDefaultIntercept"


# instance fields
.field private appContext:Landroid/content/Context;

.field private cacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept$CacheMetaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->appContext:Landroid/content/Context;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->cacheMap:Ljava/util/HashMap;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->appContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->init()V

    return-void
.end method


# virtual methods
.method public addCacheInfo(Ljava/lang/String;Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept$CacheMetaInfo;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->cacheMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->cacheMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public getCacheInfo(Ljava/lang/String;)Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept$CacheMetaInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->cacheMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept$CacheMetaInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public level()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryCache(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .line 73
    const-string v0, "queryCache"

    const-string v1, "MDefaultIntercept"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->cacheMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept$CacheMetaInfo;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v3, p1, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept$CacheMetaInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 95
    new-instance v3, Landroid/webkit/WebResourceResponse;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/webview/MDefaultIntercept$CacheMetaInfo;->mimeType:Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, p1, v4, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "queryCache exception: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method
