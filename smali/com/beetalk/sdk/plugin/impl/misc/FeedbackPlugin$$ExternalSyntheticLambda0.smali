.class public final synthetic Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;

.field public final synthetic f$1:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;->lambda$executeAction$0$com-beetalk-sdk-plugin-impl-misc-FeedbackPlugin(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v0

    return-object v0
.end method
