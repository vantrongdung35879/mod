.class final Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$SaveInfoParser;
.super Ljava/lang/Object;
.source "VKPhotoAttachments.kt"

# interfaces
.implements Lcom/vk/api/sdk/VKApiJSONResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SaveInfoParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/api/sdk/VKApiJSONResponseParser<",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$SaveInfoParser;",
        "Lcom/vk/api/sdk/VKApiJSONResponseParser;",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;",
        "()V",
        "parse",
        "responseJson",
        "Lorg/json/JSONObject;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;
    .locals 3

    const-string v0, "responseJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 112
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;

    .line 113
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 114
    const-string v2, "owner_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 112
    invoke-direct {v0, v1, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;-><init>(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 117
    new-instance v0, Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$SaveInfoParser;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKPhotoAttachments$VKSaveInfo;

    move-result-object p1

    return-object p1
.end method
