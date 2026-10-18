.class public final synthetic Lcom/beetalk/sdk/networking/model/PaymentEligibility$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/garena/pay/android/Product;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/garena/pay/android/Product;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility$$ExternalSyntheticLambda0;->f$1:Lcom/garena/pay/android/Product;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/model/PaymentEligibility$$ExternalSyntheticLambda0;->f$1:Lcom/garena/pay/android/Product;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->lambda$parse$0(Ljava/lang/String;Lcom/garena/pay/android/Product;)Lcom/beetalk/sdk/networking/model/PaymentEligibility;

    move-result-object v0

    return-object v0
.end method
