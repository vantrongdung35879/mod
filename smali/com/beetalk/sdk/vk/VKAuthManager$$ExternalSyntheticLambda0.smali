.class public final synthetic Lcom/beetalk/sdk/vk/VKAuthManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/vk/VKAuthManager;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/vk/VKAuthManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthManager$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/vk/VKAuthManager;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/vk/VKAuthManager$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/vk/VKAuthManager;

    check-cast p1, Lcom/vk/api/sdk/auth/VKAuthenticationResult;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/vk/VKAuthManager;->$r8$lambda$XGfhvh9-RYcSBDv7M_e8amFRCKM(Lcom/beetalk/sdk/vk/VKAuthManager;Lcom/vk/api/sdk/auth/VKAuthenticationResult;)V

    return-void
.end method
