.class public final Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;
.super Lcom/beetalk/sdk/networking/model/CommonResponse;
.source "GetSecurityVerifierBindInfoResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0016\u0010\t\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0016\u0010\u000b\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;",
        "Lcom/beetalk/sdk/networking/model/CommonResponse;",
        "()V",
        "email",
        "",
        "getEmail",
        "()Ljava/lang/String;",
        "emailToBe",
        "getEmailToBe",
        "mobile",
        "getMobile",
        "mobileToBe",
        "getMobileToBe",
        "remainingCoolDownTime",
        "",
        "getRemainingCoolDownTime",
        "()J",
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
.field private final email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private final emailToBe:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email_to_be"
    .end annotation
.end field

.field private final mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile"
    .end annotation
.end field

.field private final mobileToBe:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile_to_be"
    .end annotation
.end field

.field private final remainingCoolDownTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_exec_countdown"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/CommonResponse;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->mobile:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->email:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->mobileToBe:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->emailToBe:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailToBe()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->emailToBe:Ljava/lang/String;

    return-object v0
.end method

.method public final getMobile()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public final getMobileToBe()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->mobileToBe:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemainingCoolDownTime()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->remainingCoolDownTime:J

    return-wide v0
.end method
