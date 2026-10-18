.class public final synthetic Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/GGPlatform$Callback;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onPluginResult(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    check-cast p1, Lcom/garena/android/model/Result;

    invoke-virtual {v0, v1, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->lambda$getVkAuthManager$0$com-beetalk-sdk-plugin-impl-vk-VKBasePlugin(Landroid/app/Activity;Lcom/garena/android/model/Result;)V

    return-void
.end method
