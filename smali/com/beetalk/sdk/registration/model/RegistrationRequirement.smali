.class public final Lcom/beetalk/sdk/registration/model/RegistrationRequirement;
.super Ljava/lang/Object;
.source "RegistrationRequirement.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/model/RegistrationRequirement;",
        "",
        "gameRequirement",
        "Lcom/beetalk/sdk/registration/api/response/GameRequirement;",
        "userRequirement",
        "Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;",
        "(Lcom/beetalk/sdk/registration/api/response/GameRequirement;Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;)V",
        "getGameRequirement",
        "()Lcom/beetalk/sdk/registration/api/response/GameRequirement;",
        "setGameRequirement",
        "(Lcom/beetalk/sdk/registration/api/response/GameRequirement;)V",
        "getUserRequirement",
        "()Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;",
        "setUserRequirement",
        "(Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;)V",
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
.field private gameRequirement:Lcom/beetalk/sdk/registration/api/response/GameRequirement;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "game_requirement"
    .end annotation
.end field

.field private userRequirement:Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_requirement"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/registration/api/response/GameRequirement;Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;)V
    .locals 1

    const-string v0, "gameRequirement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userRequirement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/beetalk/sdk/registration/model/RegistrationRequirement;->gameRequirement:Lcom/beetalk/sdk/registration/api/response/GameRequirement;

    .line 30
    iput-object p2, p0, Lcom/beetalk/sdk/registration/model/RegistrationRequirement;->userRequirement:Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    return-void
.end method


# virtual methods
.method public final getGameRequirement()Lcom/beetalk/sdk/registration/api/response/GameRequirement;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/beetalk/sdk/registration/model/RegistrationRequirement;->gameRequirement:Lcom/beetalk/sdk/registration/api/response/GameRequirement;

    return-object v0
.end method

.method public final getUserRequirement()Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/beetalk/sdk/registration/model/RegistrationRequirement;->userRequirement:Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    return-object v0
.end method

.method public final setGameRequirement(Lcom/beetalk/sdk/registration/api/response/GameRequirement;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/beetalk/sdk/registration/model/RegistrationRequirement;->gameRequirement:Lcom/beetalk/sdk/registration/api/response/GameRequirement;

    return-void
.end method

.method public final setUserRequirement(Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/beetalk/sdk/registration/model/RegistrationRequirement;->userRequirement:Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    return-void
.end method
