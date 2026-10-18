.class public final synthetic Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/facebook/bolts/CancellationTokenSource;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/bolts/CancellationTokenSource;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/bolts/CancellationTokenSource;

    iput-object p2, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$4:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/bolts/CancellationTokenSource;

    iget-object v1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda1;->f$4:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/beetalk/sdk/registration/UserRegistrationController;->$r8$lambda$4-uGv6Q5M4kodRA218EyK6e566o(Lcom/facebook/bolts/CancellationTokenSource;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;Lcom/facebook/bolts/Task;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
