.class public final synthetic Lcom/beetalk/sdk/GGPlatform$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/beetalk/sdk/GGLoginSession;

.field public final synthetic f$2:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$2$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p3, p0, Lcom/beetalk/sdk/GGPlatform$2$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lorg/json/JSONObject;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/beetalk/sdk/GGPlatform$2$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v2, p0, Lcom/beetalk/sdk/GGPlatform$2$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/beetalk/sdk/GGPlatform$2;->lambda$onSessionProcessed$0(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lorg/json/JSONObject;)V

    return-void
.end method
