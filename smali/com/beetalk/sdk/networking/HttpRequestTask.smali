.class public Lcom/beetalk/sdk/networking/HttpRequestTask;
.super Ljava/lang/Object;
.source "HttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;
    }
.end annotation


# static fields
.field public static final GLOBAL_GSON:Lcom/google/gson/Gson;


# instance fields
.field private enableDataDome:Z

.field private ignoreResponseCode:Z

.field private final mapData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signatureKey:Ljava/lang/String;

.field private final type:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setObjectToNumberStrategy(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setNumberToNumberStrategy(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask;->GLOBAL_GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->enableDataDome:Z

    .line 42
    iput-boolean v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->ignoreResponseCode:Z

    .line 45
    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->type:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    .line 46
    iput-object p2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->mapData:Ljava/util/Map;

    return-void
.end method

.method private callback(Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 85
    instance-of v0, p2, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;

    if-eqz v0, :cond_1

    .line 86
    check-cast p2, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-interface {p2, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;->onResultObtained(Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :cond_1
    instance-of v0, p2, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    if-eqz v0, :cond_3

    .line 88
    check-cast p2, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;->onCompleted(Lorg/json/JSONObject;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static httpRequest(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;ZZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-direct {v0, p0, p2}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    .line 145
    invoke-virtual {v0, p3}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setDataDomeEnable(Z)Lcom/beetalk/sdk/networking/HttpRequestTask;

    .line 146
    invoke-virtual {v0, p4}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setIgnoreResponseCode(Z)V

    .line 147
    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static performNetworkRequest(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, p1, p2, p3, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->httpRequest(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/lang/String;Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 154
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 156
    :catch_0
    new-instance p0, Lcom/garena/pay/android/exception/GGException;

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    throw p0
.end method


# virtual methods
.method public executeParallel(Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V
    .locals 2

    .line 64
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    sget-object v1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda2;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    .line 75
    invoke-virtual {p1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void
.end method

.method public executeStringSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lbolts/Task;->waitForCompletion()V

    .line 120
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, p1

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 126
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_1
    return-object v0
.end method

.method synthetic lambda$executeParallel$0$com-beetalk-sdk-networking-HttpRequestTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$executeParallel$1$com-beetalk-sdk-networking-HttpRequestTask(Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;Lbolts/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p2}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 72
    invoke-direct {p0, p2, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->callback(Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    return-object v1

    .line 66
    :cond_1
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->callback(Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    return-object v1
.end method

.method synthetic lambda$executeParallel$2$com-beetalk-sdk-networking-HttpRequestTask(Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;Lbolts/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p2}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 78
    invoke-direct {p0, v1, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->callback(Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    :cond_0
    return-object v1
.end method

.method synthetic lambda$executeStringSync$3$com-beetalk-sdk-networking-HttpRequestTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->type:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->signatureKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->signatureKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->enableDataDome:Z

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->getSortSignatureClient(Ljava/lang/String;Z)Lokhttp3/OkHttpClient;

    move-result-object v9

    .line 108
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v3

    iget-object v6, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->mapData:Ljava/util/Map;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    iget-object v3, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->mapData:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->ignoreResponseCode:Z

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->enableDataDome:Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->signatureKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->mapData:Ljava/util/Map;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->signatureKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->enableDataDome:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v0

    iget-object v2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->mapData:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->ignoreResponseCode:Z

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->enableDataDome:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setDataDomeEnable(Z)Lcom/beetalk/sdk/networking/HttpRequestTask;
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->enableDataDome:Z

    return-object p0
.end method

.method public setIgnoreResponseCode(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->ignoreResponseCode:Z

    return-void
.end method

.method public setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->signatureKey:Ljava/lang/String;

    return-object p0
.end method
