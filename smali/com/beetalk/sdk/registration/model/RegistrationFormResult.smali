.class public final Lcom/beetalk/sdk/registration/model/RegistrationFormResult;
.super Ljava/lang/Object;
.source "RegistrationFormResult.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008B?\u0008\u0000\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0016\u001a\u00020\u000bH\u00d6\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000bH\u00d6\u0001R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0013R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/model/RegistrationFormResult;",
        "Landroid/os/Parcelable;",
        "response",
        "Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;",
        "hasSkipped",
        "",
        "hasIdentified",
        "wasFormDisplayed",
        "(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;ZZZ)V",
        "isRequired",
        "gameMinAge",
        "",
        "governmentMinAge",
        "isSkippable",
        "(ZIIZZZZ)V",
        "getGameMinAge",
        "()I",
        "getGovernmentMinAge",
        "getHasIdentified",
        "()Z",
        "getHasSkipped",
        "getWasFormDisplayed",
        "describeContents",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/beetalk/sdk/registration/model/RegistrationFormResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final gameMinAge:I

.field private final governmentMinAge:I

.field private final hasIdentified:Z

.field private final hasSkipped:Z

.field private final isRequired:Z

.field private final isSkippable:Z

.field private final wasFormDisplayed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult$Creator;

    invoke-direct {v0}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;ZZZ)V
    .locals 9

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->isRequired()Z

    move-result v2

    .line 25
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->getGameMinAge()I

    move-result v3

    .line 26
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->getGovernmentMinAge()I

    move-result v4

    .line 27
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;->isSkippable()Z

    move-result v5

    move-object v1, p0

    move v6, p2

    move v7, p3

    move v8, p4

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;-><init>(ZIIZZZZ)V

    return-void
.end method

.method public constructor <init>(ZIIZZZZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->isRequired:Z

    .line 10
    iput p2, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->gameMinAge:I

    .line 11
    iput p3, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->governmentMinAge:I

    .line 12
    iput-boolean p4, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->isSkippable:Z

    .line 13
    iput-boolean p5, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->hasSkipped:Z

    .line 14
    iput-boolean p6, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->hasIdentified:Z

    .line 15
    iput-boolean p7, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->wasFormDisplayed:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getGameMinAge()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->gameMinAge:I

    return v0
.end method

.method public final getGovernmentMinAge()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->governmentMinAge:I

    return v0
.end method

.method public final getHasIdentified()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->hasIdentified:Z

    return v0
.end method

.method public final getHasSkipped()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->hasSkipped:Z

    return v0
.end method

.method public final getWasFormDisplayed()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->wasFormDisplayed:Z

    return v0
.end method

.method public final isRequired()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->isRequired:Z

    return v0
.end method

.method public final isSkippable()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->isSkippable:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->isRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->gameMinAge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->governmentMinAge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->isSkippable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->hasSkipped:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->hasIdentified:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->wasFormDisplayed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
