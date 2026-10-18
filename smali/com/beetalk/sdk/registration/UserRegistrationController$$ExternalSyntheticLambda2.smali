.class public final synthetic Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/registration/UserRegistrationController;->$r8$lambda$liVw9tB9gdWLwdBHVkztu7OuItQ(Ljava/lang/String;)Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    move-result-object v0

    return-object v0
.end method
