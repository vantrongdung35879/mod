.class Lcom/gsdk/gcloud/netinterface/MsgWorker$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MsgWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsdk/gcloud/netinterface/MsgWorker;->initCM(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsdk/gcloud/netinterface/MsgWorker;


# direct methods
.method constructor <init>(Lcom/gsdk/gcloud/netinterface/MsgWorker;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker$3;->this$0:Lcom/gsdk/gcloud/netinterface/MsgWorker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker$3;->this$0:Lcom/gsdk/gcloud/netinterface/MsgWorker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->setNetwork(ILandroid/net/Network;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1

    .line 221
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker$3;->this$0:Lcom/gsdk/gcloud/netinterface/MsgWorker;

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->setNetwork(ILandroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 224
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker$3;->this$0:Lcom/gsdk/gcloud/netinterface/MsgWorker;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->setNetwork(ILandroid/net/Network;)V

    return-void
.end method
