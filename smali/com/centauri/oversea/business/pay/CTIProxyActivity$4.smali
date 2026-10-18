.class Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;
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

    .line 192
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$4;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    new-instance v1, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    return-void
.end method
