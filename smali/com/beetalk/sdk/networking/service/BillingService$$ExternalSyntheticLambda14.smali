.class public final synthetic Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/garena/pay/android/GGPayRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/garena/pay/android/GGPayRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda14;->f$0:Lcom/garena/pay/android/GGPayRequest;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda14;->f$0:Lcom/garena/pay/android/GGPayRequest;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/networking/service/BillingService;->lambda$getProductItemsV1$18(Lcom/garena/pay/android/GGPayRequest;Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;

    move-result-object p1

    return-object p1
.end method
