.class public final synthetic Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GGLoginSession;

.field public final synthetic f$1:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/data/AuthToken;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/data/AuthToken;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt;->$r8$lambda$oxdu9mPZrvvRS1bEReG3ebEItfY(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    return-object v0
.end method
