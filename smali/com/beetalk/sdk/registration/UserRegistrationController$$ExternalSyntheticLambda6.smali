.class public final synthetic Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/registration/UserRegistrationController;->$r8$lambda$1R7E2y72fLDkLTr0AW0UCt1Ifwk(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/UserRequirementResponse;

    move-result-object v0

    return-object v0
.end method
