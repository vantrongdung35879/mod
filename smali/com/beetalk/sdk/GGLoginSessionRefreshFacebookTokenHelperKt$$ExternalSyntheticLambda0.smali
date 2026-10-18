.class public final synthetic Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/AccessToken;

.field public final synthetic f$1:Lcom/beetalk/sdk/GGLoginSession;

.field public final synthetic f$2:Lcom/beetalk/sdk/AuthRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/AccessToken;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/AuthRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/AccessToken;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p3, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/AuthRequest;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/AuthRequest;

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;->$r8$lambda$UR0WkHB6PTiPwrhCmoWKKYS-LDk(Lcom/facebook/AccessToken;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    return-object v0
.end method
