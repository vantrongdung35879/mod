.class public final synthetic Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

.field public final synthetic f$1:Lcom/beetalk/sdk/GGLoginSession;

.field public final synthetic f$2:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p3, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/data/AuthToken;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lorg/json/JSONObject;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iget-object v1, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v2, p0, Lcom/beetalk/sdk/GGPlatform$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/data/AuthToken;

    invoke-static {v0, v1, v2, p1}, Lcom/beetalk/sdk/GGPlatform;->lambda$bindCurrentPlatformWithGuest$0(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;Lorg/json/JSONObject;)V

    return-void
.end method
