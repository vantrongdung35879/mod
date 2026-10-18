.class Lcom/gsdk/gcloud/qr/QRCodeAPI$1;
.super Ljava/lang/Object;
.source "QRCodeAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsdk/gcloud/qr/QRCodeAPI;->GenerateQRImage(IZLjava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$logo:Landroid/graphics/Bitmap;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/gsdk/gcloud/qr/QRCodeAPI;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    iput p2, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->val$tag:I

    iput-object p3, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->val$content:Ljava/lang/String;

    iput-object p4, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->val$logo:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 166
    const-string v0, "ApolloQR"

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QR_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->val$tag:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    invoke-static {v3}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->access$000(Lcom/gsdk/gcloud/qr/QRCodeAPI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    :try_start_0
    iget-object v3, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    invoke-static {v3}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->access$100(Lcom/gsdk/gcloud/qr/QRCodeAPI;)Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->val$content:Ljava/lang/String;

    iget-object v5, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->val$logo:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v5}, Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;->createQRCode(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "QRCodeAPI GenerateQRImage error="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 183
    iget-object v5, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    invoke-static {v5}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->access$100(Lcom/gsdk/gcloud/qr/QRCodeAPI;)Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    invoke-static {v6}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->access$000(Lcom/gsdk/gcloud/qr/QRCodeAPI;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6, v1}, Lcom/gsdk/gcloud/qr/zxing/EncodeUtil;->writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 187
    :cond_0
    const-string v1, "QRCodeAPI GenerateQRImage QRRetCode.SystemError: 11"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 192
    :goto_1
    new-instance v1, Lcom/gsdk/gcloud/qr/defines/QRResult;

    iget v3, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->val$tag:I

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/gsdk/gcloud/qr/defines/QRResult;-><init>(IIILjava/lang/String;)V

    .line 194
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 195
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    iput v4, v0, Landroid/os/Message;->what:I

    .line 198
    iget-object v1, p0, Lcom/gsdk/gcloud/qr/QRCodeAPI$1;->this$0:Lcom/gsdk/gcloud/qr/QRCodeAPI;

    invoke-static {v1}, Lcom/gsdk/gcloud/qr/QRCodeAPI;->access$200(Lcom/gsdk/gcloud/qr/QRCodeAPI;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
