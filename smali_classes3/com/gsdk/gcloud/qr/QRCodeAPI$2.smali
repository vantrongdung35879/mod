.class Lcom/gsdk/gcloud/qr/QRCodeAPI$2;
.super Landroid/os/Handler;
.source "QRCodeAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsdk/gcloud/qr/QRCodeAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;


# direct methods
.method constructor <init>(Lcom/gsdk/gcloud/qr/QRCodeAPI;Landroid/os/Looper;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$2;->this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 221
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 222
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/gsdk/gcloud/qr/defines/QRResult;

    .line 228
    iget-object v0, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$2;->this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    invoke-virtual {p1}, Lcom/gsdk/gcloud/qr/defines/QRResult;->getTag()I

    move-result v1

    invoke-virtual {p1}, Lcom/gsdk/gcloud/qr/defines/QRResult;->getRetCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/gsdk/gcloud/qr/defines/QRResult;->getImagePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->OnGenerateQRImage(IILjava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    const-string p1, "ApolloQR"

    const-string v0, "QRCodeAPI handler Message is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
