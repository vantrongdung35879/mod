.class Lcom/centauri/oversea/business/pay/CTIProxyActivity$3;
.super Ljava/lang/Object;
.source "CTIProxyActivity.java"

# interfaces
.implements Lcom/centauri/oversea/comm/MUIManager$MNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/pay/CTIProxyActivity;->showSandboxDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$3;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$3;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->access$200(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->startPay()V

    return-void
.end method
