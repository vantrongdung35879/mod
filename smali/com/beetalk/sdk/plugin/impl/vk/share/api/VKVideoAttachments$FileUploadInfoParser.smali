.class final Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments$FileUploadInfoParser;
.super Ljava/lang/Object;
.source "VKVideoAttachments.kt"

# interfaces
.implements Lcom/vk/api/sdk/VKApiJSONResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileUploadInfoParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/api/sdk/VKApiJSONResponseParser<",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments$VKVideoUploadResultInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments$FileUploadInfoParser;",
        "Lcom/vk/api/sdk/VKApiJSONResponseParser;",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments$VKVideoUploadResultInfo;",
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

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments$VKVideoUploadResultInfo;
    .locals 5

    const-string v0, "responseJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    :try_start_0
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments$VKVideoUploadResultInfo;

    .line 88
    const-string/jumbo v1, "video_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 89
    const-string v3, "owner_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 87
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments$VKVideoUploadResultInfo;-><init>(JJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 92
    new-instance v0, Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments$FileUploadInfoParser;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKVideoAttachments$VKVideoUploadResultInfo;

    move-result-object p1

    return-object p1
.end method
