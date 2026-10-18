.class public final Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;
.super Ljava/lang/Object;
.source "UserRequirementResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001e\u0010\u0012\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\"\u0004\u0008\u0013\u0010\u000eR\u001e\u0010\u0014\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008R\u001e\u0010\u0017\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008R\u001e\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001e\u0010 \u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0006\"\u0004\u0008\"\u0010\u0008\u00a8\u0006#"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;",
        "",
        "()V",
        "dateOfBirth",
        "",
        "getDateOfBirth",
        "()Ljava/lang/String;",
        "setDateOfBirth",
        "(Ljava/lang/String;)V",
        "hasIdentified",
        "",
        "getHasIdentified",
        "()Z",
        "setHasIdentified",
        "(Z)V",
        "hasSkipped",
        "getHasSkipped",
        "setHasSkipped",
        "isGuardian",
        "setGuardian",
        "mobile",
        "getMobile",
        "setMobile",
        "name",
        "getName",
        "setName",
        "platform",
        "",
        "getPlatform",
        "()I",
        "setPlatform",
        "(I)V",
        "prefillMobile",
        "getPrefillMobile",
        "setPrefillMobile",
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
.field private dateOfBirth:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dob"
    .end annotation
.end field

.field private hasIdentified:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_user_identified"
    .end annotation
.end field

.field private hasSkipped:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_user_skipped"
    .end annotation
.end field

.field private isGuardian:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_guardian"
    .end annotation
.end field

.field private mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private platform:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform"
    .end annotation
.end field

.field private prefillMobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prefill_mobile"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->name:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->mobile:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->dateOfBirth:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->prefillMobile:Ljava/lang/String;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->platform:I

    return-void
.end method


# virtual methods
.method public final getDateOfBirth()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasIdentified()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->hasIdentified:Z

    return v0
.end method

.method public final getHasSkipped()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->hasSkipped:Z

    return v0
.end method

.method public final getMobile()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatform()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->platform:I

    return v0
.end method

.method public final getPrefillMobile()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->prefillMobile:Ljava/lang/String;

    return-object v0
.end method

.method public final isGuardian()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->isGuardian:Z

    return v0
.end method

.method public final setDateOfBirth(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->dateOfBirth:Ljava/lang/String;

    return-void
.end method

.method public final setGuardian(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->isGuardian:Z

    return-void
.end method

.method public final setHasIdentified(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->hasIdentified:Z

    return-void
.end method

.method public final setHasSkipped(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->hasSkipped:Z

    return-void
.end method

.method public final setMobile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->mobile:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPlatform(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->platform:I

    return-void
.end method

.method public final setPrefillMobile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;->prefillMobile:Ljava/lang/String;

    return-void
.end method
