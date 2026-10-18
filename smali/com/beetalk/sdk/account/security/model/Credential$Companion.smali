.class public final Lcom/beetalk/sdk/account/security/model/Credential$Companion;
.super Ljava/lang/Object;
.source "Credential.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/account/security/model/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0005H\u0007J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/model/Credential$Companion;",
        "",
        "()V",
        "otp",
        "Lcom/beetalk/sdk/account/security/model/Credential$OTP;",
        "",
        "password",
        "Lcom/beetalk/sdk/account/security/model/Credential$Password;",
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
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/account/security/model/Credential$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final otp(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/Credential$OTP;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "otp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/beetalk/sdk/account/security/model/Credential$OTP;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/account/security/model/Credential$OTP;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final password(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/Credential$Password;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/beetalk/sdk/account/security/model/Credential$Password;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/account/security/model/Credential$Password;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
