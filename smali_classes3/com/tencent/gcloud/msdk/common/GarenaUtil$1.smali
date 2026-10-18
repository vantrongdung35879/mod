.class Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "GarenaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/common/GarenaUtil;->queryAndCompressBitmap(Ljava/lang/String;ILjava/lang/String;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$methodID:I

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;Ljava/lang/String;I)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$imagePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$callback:Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$seqID:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$methodID:I

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 158
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->onNotify(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNotify(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance v0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;-><init>(Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->access$000(Landroid/graphics/Bitmap;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] query bitmap onNotify: can\'t find imagePath: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$callback:Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;

    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$methodID:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query bitmap onNotify: can\'t find imagePath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V

    :goto_0
    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] query bitmap onResult, imagePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->thirdMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$methodID:I

    iput v0, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->methodNameID:I

    .line 202
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$callback:Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V

    return-void
.end method
