.class Lcom/tencent/gcloud/msdk/common/GarenaUtil$2;
.super Ljava/lang/Object;
.source "GarenaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/common/GarenaUtil;->compressBitmap(Landroid/graphics/Bitmap;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$2;->val$callback:Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 219
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$2;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$2;->val$callback:Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->onNotify(Ljava/lang/Object;)V

    return-void
.end method
