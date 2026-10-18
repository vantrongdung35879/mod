.class public final synthetic Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/data/AuthToken;

.field public final synthetic f$1:Lcom/beetalk/sdk/data/AuthToken;

.field public final synthetic f$2:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda5;->f$0:Lcom/beetalk/sdk/data/AuthToken;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda5;->f$1:Lcom/beetalk/sdk/data/AuthToken;

    iput-object p3, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda5;->f$2:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    return-void
.end method


# virtual methods
.method public final onTokenResult(Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda5;->f$0:Lcom/beetalk/sdk/data/AuthToken;

    iget-object v1, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda5;->f$1:Lcom/beetalk/sdk/data/AuthToken;

    iget-object v2, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda5;->f$2:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->lambda$inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable$2(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method
