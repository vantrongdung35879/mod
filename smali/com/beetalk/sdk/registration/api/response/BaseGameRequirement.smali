.class public Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;
.super Ljava/lang/Object;
.source "GameRequirementResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;",
        "",
        "()V",
        "gameMinAge",
        "",
        "getGameMinAge",
        "()I",
        "setGameMinAge",
        "(I)V",
        "governmentMinAge",
        "getGovernmentMinAge",
        "setGovernmentMinAge",
        "isRequired",
        "",
        "()Z",
        "setRequired",
        "(Z)V",
        "isSkippable",
        "setSkippable",
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
.field private gameMinAge:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "game_min_age"
    .end annotation
.end field

.field private governmentMinAge:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gov_min_age"
    .end annotation
.end field

.field private isRequired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_form_required"
    .end annotation
.end field

.field private isSkippable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_skippable"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGameMinAge()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;->gameMinAge:I

    return v0
.end method

.method public final getGovernmentMinAge()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;->governmentMinAge:I

    return v0
.end method

.method public final isRequired()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;->isRequired:Z

    return v0
.end method

.method public final isSkippable()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;->isSkippable:Z

    return v0
.end method

.method public final setGameMinAge(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;->gameMinAge:I

    return-void
.end method

.method public final setGovernmentMinAge(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;->governmentMinAge:I

    return-void
.end method

.method public final setRequired(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;->isRequired:Z

    return-void
.end method

.method public final setSkippable(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/beetalk/sdk/registration/api/response/BaseGameRequirement;->isSkippable:Z

    return-void
.end method
