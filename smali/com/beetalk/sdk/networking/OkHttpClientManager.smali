.class public final Lcom/beetalk/sdk/networking/OkHttpClientManager;
.super Ljava/lang/Object;
.source "OkHttpClientManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J&\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00102\u0006\u0010\u0018\u001a\u00020\u0004H\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0013J(\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eJ\u0008\u0010 \u001a\u00020\u001fH\u0002J\u001a\u0010!\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0002J\u0018\u0010!\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0017J\u0018\u0010%\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0017J\u000c\u0010&\u001a\u00020\u001f*\u00020\u001fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/OkHttpClientManager;",
        "",
        "()V",
        "FORCE_DATADOME_USER_AGENT",
        "",
        "backupHostFinder",
        "Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;",
        "cacheSize",
        "",
        "defaultClient",
        "Lokhttp3/OkHttpClient;",
        "getDefaultClient",
        "()Lokhttp3/OkHttpClient;",
        "defaultClient$delegate",
        "Lkotlin/Lazy;",
        "autoSwitchHost",
        "Lkotlin/Result;",
        "url",
        "autoSwitchHost-IoAF18A",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "buildCookieJar",
        "Lokhttp3/CookieJar;",
        "checkHostConnectivity",
        "",
        "host",
        "checkHostConnectivity-IoAF18A",
        "getClient",
        "enableDataDome",
        "dataDomeUserAgent",
        "clientBuilderProvider",
        "Lkotlin/Function0;",
        "Lokhttp3/OkHttpClient$Builder;",
        "getClientBuilder",
        "getSignatureClient",
        "signatureProvider",
        "Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;",
        "signatureKey",
        "getSortSignatureClient",
        "defaultConfigs",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final FORCE_DATADOME_USER_AGENT:Ljava/lang/String; = "BLOCKUA"

.field public static final INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

.field private static final backupHostFinder:Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

.field private static final cacheSize:J = 0xa00000L

.field private static final defaultClient$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4KHiBwr31zG-GKdW3cZCh3K25oM(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSortSignatureClient$lambda$5(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lMH2mTHjWRzgDuqTYo3Ao5fpJNE(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient$lambda$4(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sJzYAPFIo_q4Fd8DtRL_pDmHdqM(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getClient$lambda$3$lambda$1(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    .line 48
    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$defaultClient$2;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager$defaultClient$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->defaultClient$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v0, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->backupHostFinder:Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getClientBuilder(Lcom/beetalk/sdk/networking/OkHttpClientManager;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method private final buildCookieJar()Lokhttp3/CookieJar;
    .locals 1

    .line 77
    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$buildCookieJar$1;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager$buildCookieJar$1;-><init>()V

    check-cast v0, Lokhttp3/CookieJar;

    return-object v0
.end method

.method private final checkHostConnectivity-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string v0, "Cannot access this domain: "

    .line 166
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 167
    sget-object v1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v1, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 168
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 171
    :cond_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 168
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final defaultConfigs(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 3

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 67
    new-instance v0, Lcom/beetalk/sdk/networking/interceptor/UserAgentInterceptor;

    new-instance v1, Lcom/beetalk/sdk/networking/GarenaUserAgent;

    invoke-direct {v1}, Lcom/beetalk/sdk/networking/GarenaUserAgent;-><init>()V

    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/networking/interceptor/UserAgentInterceptor;-><init>(Ljava/lang/String;)V

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 68
    new-instance v0, Lcom/beetalk/sdk/networking/interceptor/CookiesInterceptor;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/interceptor/CookiesInterceptor;-><init>()V

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 71
    new-instance v0, Lcom/beetalk/sdk/networking/interceptor/BackupHostInterceptor;

    sget-object v1, Lcom/beetalk/sdk/networking/OkHttpClientManager;->backupHostFinder:Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/networking/interceptor/BackupHostInterceptor;-><init>(Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;)V

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 73
    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->buildCookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    return-object p1
.end method

.method public static synthetic getClient$default(Lcom/beetalk/sdk/networking/OkHttpClientManager;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 102
    const-string p2, ""

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 103
    sget-object p3, Lcom/beetalk/sdk/networking/OkHttpClientManager$getClient$1;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager$getClient$1;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 100
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getClient(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static final getClient$lambda$3$lambda$1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OkHttp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final getClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getDefaultClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->defaultConfigs(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method private final getDefaultClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 48
    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->defaultClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private final getSignatureClient(ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;)Lokhttp3/OkHttpClient;
    .locals 7

    .line 158
    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$getSignatureClient$2;

    invoke-direct {v0, p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager$getSignatureClient$2;-><init>(Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getClient$default(Lcom/beetalk/sdk/networking/OkHttpClientManager;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic getSignatureClient$default(Lcom/beetalk/sdk/networking/OkHttpClientManager;Ljava/lang/String;ZILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 135
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient(Ljava/lang/String;Z)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getSignatureClient$default(Lcom/beetalk/sdk/networking/OkHttpClientManager;ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;ILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 154
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient(ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static final getSignatureClient$lambda$4(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;
    .locals 1

    const-string v0, "$signatureKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Lcom/beetalk/sdk/networking/OkHttpExtsKt;->parametersToString(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Security;->HMAC256Digest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HMAC256Digest(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getSortSignatureClient$default(Lcom/beetalk/sdk/networking/OkHttpClientManager;Ljava/lang/String;ZILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 144
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSortSignatureClient(Ljava/lang/String;Z)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static final getSortSignatureClient$lambda$5(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;
    .locals 3

    const-string v0, "$signatureKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 150
    invoke-static {p1, v2, v0, v1}, Lcom/beetalk/sdk/networking/OkHttpExtsKt;->parametersToSortedString$default(Lokhttp3/Request;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Security;->HMAC256Digest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HMAC256Digest(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final autoSwitchHost-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 179
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parse url failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 183
    sget-object v2, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-direct {v2, v1}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->checkHostConnectivity-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 184
    invoke-static {v2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    sget-object p1, Lcom/beetalk/sdk/networking/OkHttpClientManager;->backupHostFinder:Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;

    invoke-virtual {p1, v1}, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;->findBackupHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 189
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Backup host not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 190
    :cond_2
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final getClient(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;)Lokhttp3/OkHttpClient;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;)",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    const-string v0, "dataDomeUserAgent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientBuilderProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lokhttp3/OkHttpClient$Builder;

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Lcom/beetalk/sdk/networking/DataDome;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/networking/DataDome;-><init>(ZLco/datadome/sdk/DataDomeSDKListener;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/DataDome;->interceptor()Lco/datadome/sdk/DataDomeInterceptor;

    move-result-object p1

    .line 111
    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->buildCookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lco/datadome/sdk/DataDomeInterceptor;->getDataDomeCookieJar(Lokhttp3/CookieJar;)Lokhttp3/CookieJar;

    move-result-object v0

    const-string v1, "getDataDomeCookieJar(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 115
    check-cast p1, Lokhttp3/Interceptor;

    invoke-virtual {p3, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 116
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 117
    new-instance p1, Lcom/beetalk/sdk/networking/interceptor/UserAgentInterceptor;

    invoke-direct {p1, p2}, Lcom/beetalk/sdk/networking/interceptor/UserAgentInterceptor;-><init>(Ljava/lang/String;)V

    check-cast p1, Lokhttp3/Interceptor;

    invoke-virtual {p3, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 123
    :cond_0
    new-instance p1, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance p2, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, p2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 126
    sget-boolean p2, Lcom/beetalk/sdk/SDKConstants;->NO_LOG:Z

    if-nez p2, :cond_1

    .line 127
    sget-object p2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0

    .line 129
    :cond_1
    sget-object p2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 126
    :goto_0
    invoke-virtual {p1, p2}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 125
    check-cast p1, Lokhttp3/Interceptor;

    .line 123
    invoke-virtual {p3, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 132
    invoke-virtual {p3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public final getSignatureClient(Ljava/lang/String;Z)Lokhttp3/OkHttpClient;
    .locals 1

    const-string/jumbo v0, "signatureKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient(ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public final getSortSignatureClient(Ljava/lang/String;Z)Lokhttp3/OkHttpClient;
    .locals 1

    const-string/jumbo v0, "signatureKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSignatureClient(ZLcom/beetalk/sdk/networking/interceptor/SignatureProvider;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method
