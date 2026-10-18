.class public final synthetic Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GGLoginSession;

.field public final synthetic f$1:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda12;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p2, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda12;->f$1:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iput-object p3, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda12;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda12;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda12;->f$1:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iget-object v2, p0, Lcom/beetalk/sdk/account/security/SecurityVerifierController$$ExternalSyntheticLambda12;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1}, Lcom/beetalk/sdk/account/security/SecurityVerifierController;->$r8$lambda$keruXBCzoxLjgu8lIxJDLhUssxM(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Landroid/app/Activity;Lcom/facebook/bolts/Task;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
