.class Lcom/gcloudsdk/apollo/MsgWorker$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MsgWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gcloudsdk/apollo/MsgWorker;->initCM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gcloudsdk/apollo/MsgWorker;


# direct methods
.method constructor <init>(Lcom/gcloudsdk/apollo/MsgWorker;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker$4;->this$0:Lcom/gcloudsdk/apollo/MsgWorker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/gcloudsdk/apollo/MsgWorker$4;->this$0:Lcom/gcloudsdk/apollo/MsgWorker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/gcloudsdk/apollo/MsgWorker;->setNetwork(ILandroid/net/Network;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker$4;->this$0:Lcom/gcloudsdk/apollo/MsgWorker;

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/gcloudsdk/apollo/MsgWorker;->setNetwork(ILandroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 159
    iget-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker$4;->this$0:Lcom/gcloudsdk/apollo/MsgWorker;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/gcloudsdk/apollo/MsgWorker;->setNetwork(ILandroid/net/Network;)V

    return-void
.end method
