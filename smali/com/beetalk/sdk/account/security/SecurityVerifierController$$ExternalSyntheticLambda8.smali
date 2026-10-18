.class public final synthetic Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/account/security/model/Credential$OTP;

.field public final synthetic f$1:Lcom/beetalk/sdk/account/security/model/OTPRecipient;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/account/security/model/Credential$OTP;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda8;->f$0:Lcom/beetalk/sdk/account/security/model/Credential$OTP;

    iput-object p2, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda8;->f$1:Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda8;->f$0:Lcom/beetalk/sdk/account/security/model/Credential$OTP;

    iget-object v1, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda8;->f$1:Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->$r8$lambda$luL4uuwYOWvTaUYLJvIpwd1pJmM(Lcom/beetalk/sdk/account/security/model/Credential$OTP;Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
