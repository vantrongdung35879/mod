.class public final Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;
.super Lcom/beetalk/sdk/networking/model/CommonResponse;
.source "VerifySecurityVerifierOTPResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;",
        "Lcom/beetalk/sdk/networking/model/CommonResponse;",
        "()V",
        "verifierToken",
        "",
        "getVerifierToken",
        "()Ljava/lang/String;",
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
.field private final verifierToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verifier_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/CommonResponse;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;->verifierToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getVerifierToken()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierOTPResponse;->verifierToken:Ljava/lang/String;

    return-object v0
.end method
