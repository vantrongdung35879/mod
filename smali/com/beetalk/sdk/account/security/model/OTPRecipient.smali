.class public abstract Lcom/beetalk/sdk/account/security/model/OTPRecipient;
.super Ljava/lang/Object;
.source "OTPRecipient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;,
        Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;,
        Lcom/beetalk/sdk/account/security/model/OTPRecipient$MobileOTPRecipient;,
        Lcom/beetalk/sdk/account/security/model/OTPRecipient$WhatsappOTPRecipient;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00072\u00020\u0001:\u0004\u0007\u0008\t\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0003\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/model/OTPRecipient;",
        "",
        "value",
        "",
        "(Ljava/lang/String;)V",
        "getValue$sdk_release",
        "()Ljava/lang/String;",
        "Companion",
        "EmailOTPRecipient",
        "MobileOTPRecipient",
        "WhatsappOTPRecipient",
        "Lcom/beetalk/sdk/account/security/model/OTPRecipient$EmailOTPRecipient;",
        "Lcom/beetalk/sdk/account/security/model/OTPRecipient$MobileOTPRecipient;",
        "Lcom/beetalk/sdk/account/security/model/OTPRecipient$WhatsappOTPRecipient;",
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
.field public static final Companion:Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient;->Companion:Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/beetalk/sdk/account/security/model/OTPRecipient;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/account/security/model/OTPRecipient;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final email(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/OTPRecipient;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient;->Companion:Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;->email(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    move-result-object p0

    return-object p0
.end method

.method public static final mobile(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/OTPRecipient;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient;->Companion:Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;->mobile(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    move-result-object p0

    return-object p0
.end method

.method public static final whatsapp(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/OTPRecipient;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/account/security/model/OTPRecipient;->Companion:Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/account/security/model/OTPRecipient$Companion;->whatsapp(Ljava/lang/String;)Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getValue$sdk_release()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/model/OTPRecipient;->value:Ljava/lang/String;

    return-object v0
.end method
