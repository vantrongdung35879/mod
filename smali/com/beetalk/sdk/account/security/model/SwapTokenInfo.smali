.class public final Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;
.super Ljava/lang/Object;
.source "SwapTokenInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;",
        "",
        "response",
        "Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;",
        "(Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;)V",
        "token",
        "",
        "openId",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getOpenId",
        "()Ljava/lang/String;",
        "getToken",
        "toString",
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
.field private final openId:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/api/response/VerifySecurityVerifierSwapOTPResponse;->getOpenId()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;->token:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;->openId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOpenId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/beetalk/sdk/account/security/model/SwapTokenInfo;->openId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SwapTokenInfo(token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", openId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
