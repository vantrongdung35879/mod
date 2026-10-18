.class public final Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;
.super Ljava/lang/Object;
.source "RegistrationFormWebDialog.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInteractionResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eH\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;",
        "Landroid/os/Parcelable;",
        "hasSkipped",
        "",
        "hasIdentified",
        "errMsg",
        "",
        "(ZZLjava/lang/String;)V",
        "getErrMsg",
        "()Ljava/lang/String;",
        "getHasIdentified",
        "()Z",
        "getHasSkipped",
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
            "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final errMsg:Ljava/lang/String;

.field private final hasIdentified:Z

.field private final hasSkipped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult$Creator;

    invoke-direct {v0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;-><init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 1

    const-string v0, "errMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->hasSkipped:Z

    .line 44
    iput-boolean p2, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->hasIdentified:Z

    .line 45
    iput-object p3, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 45
    const-string p3, ""

    .line 42
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasIdentified()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->hasIdentified:Z

    return v0
.end method

.method public final getHasSkipped()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->hasSkipped:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->hasSkipped:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->hasIdentified:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->errMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
