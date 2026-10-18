.class public final synthetic Lcom/beetalk/sdk/GasAuthRequestHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GasAuthRequestHandler;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GasAuthRequestHandler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GasAuthRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GasAuthRequestHandler;

    iput-object p2, p0, Lcom/beetalk/sdk/GasAuthRequestHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GasAuthRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GasAuthRequestHandler;

    iget-object v1, p0, Lcom/beetalk/sdk/GasAuthRequestHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GasAuthRequestHandler;->lambda$onActivityResult$0$com-beetalk-sdk-GasAuthRequestHandler(Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    return-object v0
.end method
