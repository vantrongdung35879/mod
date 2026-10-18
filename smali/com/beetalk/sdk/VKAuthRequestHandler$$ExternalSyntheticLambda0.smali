.class public final synthetic Lcom/beetalk/sdk/VKAuthRequestHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/GGPlatform$Callback;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/VKAuthRequestHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/VKAuthRequestHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    return-void
.end method


# virtual methods
.method public final onPluginResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    check-cast p1, Lcom/garena/android/model/Result;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/VKAuthRequestHandler;->lambda$new$0$com-beetalk-sdk-VKAuthRequestHandler(Lcom/garena/android/model/Result;)V

    return-void
.end method
