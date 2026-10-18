.class public final Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;
.super Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;
.source "GameRequirementResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;",
        "Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;",
        "()V",
        "webUrl",
        "",
        "getWebUrl",
        "()Ljava/lang/String;",
        "setWebUrl",
        "(Ljava/lang/String;)V",
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


# instance fields
.field private webUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "web_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->webUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getWebUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->webUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setWebUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->webUrl:Ljava/lang/String;

    return-void
.end method
