.class public final Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;
.super Ljava/lang/Object;
.source "SecurityVerifierBindInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u000f\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B7\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u0017\u001a\u00020\u0006H\u0016R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;",
        "",
        "response",
        "Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;",
        "(Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;)V",
        "mobile",
        "",
        "email",
        "mobileToBe",
        "emailToBe",
        "remainingCoolDownTime",
        "",
        "isInCoolDown",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V",
        "getEmail",
        "()Ljava/lang/String;",
        "getEmailToBe",
        "()Z",
        "getMobile",
        "getMobileToBe",
        "getRemainingCoolDownTime",
        "()J",
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
.field private final email:Ljava/lang/String;

.field private final emailToBe:Ljava/lang/String;

.field private final isInCoolDown:Z

.field private final mobile:Ljava/lang/String;

.field private final mobileToBe:Ljava/lang/String;

.field private final remainingCoolDownTime:J


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;)V
    .locals 10

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->getMobile()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->getMobileToBe()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->getEmailToBe()Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->getRemainingCoolDownTime()J

    move-result-wide v6

    .line 38
    invoke-virtual {p1}, Lcom/beetalk/sdk/account/security/api/response/GetSecurityVerifierBindInfoResponse;->getRemainingCoolDownTime()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long p1, v0, v8

    if-lez p1, :cond_0

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object v1, p0

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->mobile:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->email:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->mobileToBe:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->emailToBe:Ljava/lang/String;

    .line 28
    iput-wide p5, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->remainingCoolDownTime:J

    .line 29
    iput-boolean p7, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->isInCoolDown:Z

    return-void
.end method


# virtual methods
.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailToBe()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->emailToBe:Ljava/lang/String;

    return-object v0
.end method

.method public final getMobile()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public final getMobileToBe()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->mobileToBe:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemainingCoolDownTime()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->remainingCoolDownTime:J

    return-wide v0
.end method

.method public final isInCoolDown()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->isInCoolDown:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 42
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->mobile:Ljava/lang/String;

    iget-object v1, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->email:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->mobileToBe:Ljava/lang/String;

    iget-object v3, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->emailToBe:Ljava/lang/String;

    iget-wide v4, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->remainingCoolDownTime:J

    iget-boolean v6, p0, Lcom/beetalk/sdk/account/security/model/SecurityVerifierBindInfo;->isInCoolDown:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SecurityVerifierBindInfo(mobile=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', email=\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', mobileToBe=\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', emailToBe=\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', remainingCoolDownTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isInCoolDown="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
