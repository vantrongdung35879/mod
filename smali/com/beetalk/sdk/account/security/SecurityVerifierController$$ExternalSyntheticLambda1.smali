.class public final synthetic Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/account/security/model/OTPRecipient;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/account/security/model/OTPRecipient;

    invoke-static {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->$r8$lambda$n7kccrt5sotlpM74MFMYtrR0LGA(Lcom/beetalk/sdk/account/security/model/OTPRecipient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
