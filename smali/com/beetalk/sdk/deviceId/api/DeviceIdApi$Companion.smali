.class public final Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;
.super Ljava/lang/Object;
.source "DeviceIdApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/deviceId/api/DeviceIdApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceIdApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceIdApi.kt\ncom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;",
        "",
        "()V",
        "generateDeviceId",
        "Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;",
        "refreshDeviceId",
        "deviceId",
        "",
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
.field static final synthetic $$INSTANCE:Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;

    invoke-direct {v0}, Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;->$$INSTANCE:Lcom/beetalk/sdk/deviceId/api/DeviceIdApi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateDeviceId()Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;
    .locals 20

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Lkotlin/Pair;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppIdInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_id"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 35
    new-instance v1, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;

    move-object v3, v1

    const/16 v18, 0x3fff

    const/16 v19, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "data"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 33
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 37
    sget-object v0, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->Companion:Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v3

    .line 38
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/device/api/v1/android/device-id:generate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppKey()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    .line 45
    sget-object v11, Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;->JSON:Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;

    const/4 v7, 0x1

    .line 37
    invoke-virtual/range {v3 .. v11}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;ZLcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 48
    sget-object v2, Lcom/beetalk/sdk/networking/DataResponse;->Companion:Lcom/beetalk/sdk/networking/DataResponse$Companion;

    const-class v3, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    invoke-virtual {v2, v0, v3}, Lcom/beetalk/sdk/networking/DataResponse$Companion;->parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/garena/android/model/Result;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->isSucceed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    :cond_1
    return-object v1
.end method

.method public final refreshDeviceId(Ljava/lang/String;)Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "deviceId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 56
    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "device_id"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 57
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppIdInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "app_id"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 58
    new-instance v0, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;

    move-object v3, v0

    const/16 v18, 0x3fff

    const/16 v19, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/beetalk/sdk/deviceId/api/DeviceFingerprintData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "data"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 55
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 60
    sget-object v0, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->Companion:Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v3

    .line 61
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/device/api/v1/android/device-id:refresh"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppKey()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    .line 68
    sget-object v11, Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;->JSON:Lcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;

    const/4 v7, 0x1

    .line 60
    invoke-virtual/range {v3 .. v11}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;ZLjava/lang/String;Lokhttp3/OkHttpClient;ZLcom/beetalk/sdk/networking/SimpleNetworkClient$RequestBodyFormat;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 71
    sget-object v2, Lcom/beetalk/sdk/networking/DataResponse;->Companion:Lcom/beetalk/sdk/networking/DataResponse$Companion;

    const-class v3, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    invoke-virtual {v2, v0, v3}, Lcom/beetalk/sdk/networking/DataResponse$Companion;->parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/garena/android/model/Result;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->isSucceed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;

    :cond_1
    return-object v1
.end method
