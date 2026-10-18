.class public final Lcom/beetalk/sdk/registration/api/response/GameRequirement;
.super Ljava/lang/Object;
.source "GameRequirementResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\'\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u000fR\u0016\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/api/response/GameRequirement;",
        "",
        "gameRequirementResponse",
        "Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;",
        "(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;)V",
        "isRequired",
        "",
        "gameMinAge",
        "",
        "governmentMinAge",
        "isSkippable",
        "(ZIIZ)V",
        "getGameMinAge",
        "()I",
        "getGovernmentMinAge",
        "()Z",
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
.field private final gameMinAge:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "game_min_age"
    .end annotation
.end field

.field private final governmentMinAge:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gov_min_age"
    .end annotation
.end field

.field private final isRequired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_form_required"
    .end annotation
.end field

.field private final isSkippable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_skippable"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;)V
    .locals 3

    const-string v0, "gameRequirementResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->isRequired()Z

    move-result v0

    .line 58
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->getGameMinAge()I

    move-result v1

    .line 59
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->getGovernmentMinAge()I

    move-result v2

    .line 60
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->isSkippable()Z

    move-result p1

    .line 56
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/beetalk/sdk/registration/api/response/GameRequirement;-><init>(ZIIZ)V

    return-void
.end method

.method private constructor <init>(ZIIZ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirement;->isRequired:Z

    .line 49
    iput p2, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirement;->gameMinAge:I

    .line 51
    iput p3, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirement;->governmentMinAge:I

    .line 53
    iput-boolean p4, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirement;->isSkippable:Z

    return-void
.end method


# virtual methods
.method public final getGameMinAge()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirement;->gameMinAge:I

    return v0
.end method

.method public final getGovernmentMinAge()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirement;->governmentMinAge:I

    return v0
.end method

.method public final isRequired()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirement;->isRequired:Z

    return v0
.end method

.method public final isSkippable()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/api/response/GameRequirement;->isSkippable:Z

    return v0
.end method
