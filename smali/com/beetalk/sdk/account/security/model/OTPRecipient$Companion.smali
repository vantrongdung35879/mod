.class public final Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;
.super Ljava/lang/Object;
.source "OTPRecipient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/account/security/model/OTPRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0006H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;",
        "",
        "()V",
        "email",
        "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
        "emailAddress",
        "",
        "mobile",
        "mobileNumber",
        "whatsapp",
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

    invoke-direct {p0}, Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final email(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/OTPRecipient;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "emailAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    return-object v0
.end method

.method public final mobile(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/OTPRecipient;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "mobileNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient$MobileOTPRecipient;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/account/security/model/OTPRecipient$MobileOTPRecipient;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    return-object v0
.end method

.method public final whatsapp(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/OTPRecipient;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "mobileNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient$WhatsappOTPRecipient;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/account/security/model/OTPRecipient$WhatsappOTPRecipient;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    return-object v0
.end method
