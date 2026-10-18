.class public final synthetic Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/account/security/model/Credential$Password;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/account/security/model/Credential$Password;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/account/security/model/Credential$Password;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/account/security/model/Credential$Password;

    invoke-static {v0}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->$r8$lambda$E1qx3vAOiHJu2baSHDd9OnSSG60(Lcom/beetalk/sdk/account/security/model/Credential$Password;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
