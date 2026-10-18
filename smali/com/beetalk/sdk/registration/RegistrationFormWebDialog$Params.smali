.class final Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;
.super Ljava/lang/Object;
.source "RegistrationFormWebDialog.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Params"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\u0019\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;",
        "Landroid/os/Parcelable;",
        "url",
        "",
        "isSkippable",
        "",
        "requirementJson",
        "(Ljava/lang/String;ZLjava/lang/String;)V",
        "()Z",
        "getRequirementJson",
        "()Ljava/lang/String;",
        "getUrl",
        "describeContents",
        "",
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
            "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isSkippable:Z

.field private final requirementJson:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params$Creator;

    invoke-direct {v0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requirementJson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->url:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->isSkippable:Z

    .line 38
    iput-object p3, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->requirementJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getRequirementJson()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->requirementJson:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final isSkippable()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->isSkippable:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->isSkippable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->requirementJson:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
