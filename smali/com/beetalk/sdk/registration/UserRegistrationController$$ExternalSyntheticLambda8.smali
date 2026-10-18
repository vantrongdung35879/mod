.class public final synthetic Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/facebook/bolts/CancellationTokenSource;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda8;->f$2:Lcom/facebook/bolts/CancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$$ExternalSyntheticLambda8;->f$2:Lcom/facebook/bolts/CancellationTokenSource;

    invoke-static {v0, v1, v2, p1}, Lcom/beetalk/sdk/registration/UserRegistrationController;->$r8$lambda$L3aaD0e3rnGouNHGzkt_1Qw4wbo(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/bolts/CancellationTokenSource;Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method
