.class public final Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult$Creator;
.super Ljava/lang/Object;
.source "RegistrationFormWebDialog.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;-><init>(ZZLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;
    .locals 0

    new-array p1, p1, [Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult$Creator;->newArray(I)[Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;

    move-result-object p1

    return-object p1
.end method
