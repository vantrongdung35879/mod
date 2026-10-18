.class public final synthetic Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/bolts/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/bolts/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lorg/json/JSONObject;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshGarenaHelperKt;->$r8$lambda$osDsN5lrnHTZn56yVeb3ccIzvJk(Lcom/facebook/bolts/TaskCompletionSource;Lorg/json/JSONObject;)V

    return-void
.end method
