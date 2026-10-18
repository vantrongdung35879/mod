.class public final synthetic Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;->f$0:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    return-void
.end method


# virtual methods
.method public final onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;->f$0:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {v0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession;->lambda$obtainActiveSwapSession$0(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void
.end method
