.class public final synthetic Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lbolts/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lbolts/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;->f$0:Lbolts/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;->f$0:Lbolts/TaskCompletionSource;

    invoke-static {v0, p1, p2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->lambda$querySkuDetails$5(Lbolts/TaskCompletionSource;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
