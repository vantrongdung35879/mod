.class public final synthetic Lcom/beetalk/sdk/LineAuthRequestHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/LineAuthRequestHandler;

.field public final synthetic f$1:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/LineAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$$ExternalSyntheticLambda2;->f$0:Lcom/beetalk/sdk/LineAuthRequestHandler;

    iput-object p2, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$$ExternalSyntheticLambda2;->f$1:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iput-object p3, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$$ExternalSyntheticLambda2;->f$0:Lcom/beetalk/sdk/LineAuthRequestHandler;

    iget-object v1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$$ExternalSyntheticLambda2;->f$1:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iget-object v2, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/LineAuthRequestHandler;->lambda$exchangeToken$0$com-beetalk-sdk-LineAuthRequestHandler(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    return-object v0
.end method
