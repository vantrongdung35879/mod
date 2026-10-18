.class public final synthetic Lcom/beetalk/sdk/FBAuthRequestHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

.field public final synthetic f$1:Lcom/facebook/AccessToken;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/FBAuthRequestHandler;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    iput-object p2, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/AccessToken;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    iget-object v1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/AccessToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/FBAuthRequestHandler;->lambda$onSuccess$0$com-beetalk-sdk-FBAuthRequestHandler(Lcom/facebook/AccessToken;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    return-object v0
.end method
