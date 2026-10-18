.class public final synthetic Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/garena/pay/android/GGPayRequest;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/garena/pay/android/GGPayRequest;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda7;->f$0:Lcom/garena/pay/android/GGPayRequest;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda7;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda7;->f$0:Lcom/garena/pay/android/GGPayRequest;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda7;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/beetalk/sdk/networking/service/BillingService;->lambda$getProductItems$20(Lcom/garena/pay/android/GGPayRequest;Landroid/content/Context;Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;

    move-result-object p1

    return-object p1
.end method
