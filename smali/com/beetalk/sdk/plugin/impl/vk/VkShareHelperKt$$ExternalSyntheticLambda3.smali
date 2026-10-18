.class public final synthetic Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/plugin/GGPluginCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt;->$r8$lambda$sgt9lfRXNOFbb7MRBEknbwyVxfs(Lcom/beetalk/sdk/plugin/GGPluginCallback;Lcom/facebook/bolts/Task;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
