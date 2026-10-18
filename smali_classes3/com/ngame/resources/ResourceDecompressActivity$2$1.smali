.class Lcom/ngame/resources/ResourceDecompressActivity$2$1;
.super Ljava/lang/Object;
.source "ResourceDecompressActivity.java"

# interfaces
.implements Lcom/ngame/extractor/IExtractCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ngame/resources/ResourceDecompressActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;


# direct methods
.method constructor <init>(Lcom/ngame/resources/ResourceDecompressActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMsg"
        }
    .end annotation

    .line 250
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 251
    sget-object v1, Lcom/ngame/resources/MainMSG;->EXTRACT_ERROR:Lcom/ngame/resources/MainMSG;

    invoke-virtual {v1}, Lcom/ngame/resources/MainMSG;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 252
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 253
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object p1, p1, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$700(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGetTotalSize(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 229
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 230
    sget-object v1, Lcom/ngame/resources/MainMSG;->EXTRACT_TOTAL_SIZE:Lcom/ngame/resources/MainMSG;

    invoke-virtual {v1}, Lcom/ngame/resources/MainMSG;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 231
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 232
    const-string/jumbo v2, "total_byte"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object p1, p1, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$700(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProgress(Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileName",
            "byteCount"
        }
    .end annotation

    .line 239
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 240
    sget-object v1, Lcom/ngame/resources/MainMSG;->EXTRACT_PROGRESS:Lcom/ngame/resources/MainMSG;

    invoke-virtual {v1}, Lcom/ngame/resources/MainMSG;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 241
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    const-string v2, "cur_file"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string p1, "cur_byte"

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 244
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 245
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object p1, p1, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->access$700(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v0, v0, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {v0}, Lcom/ngame/resources/ResourceDecompressActivity;->access$700(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/ngame/resources/MainMSG;->EXTRACT_START:Lcom/ngame/resources/MainMSG;

    invoke-virtual {v1}, Lcom/ngame/resources/MainMSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStop()V
    .locals 7

    const/4 v0, 0x1

    .line 259
    invoke-static {v0}, Lcom/ngame/resources/RD_FileIntegrityChecker;->CheckAllExtractorFilesCorrect(Z)Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;

    move-result-object v1

    .line 260
    iget-boolean v2, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->result:Z

    if-nez v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v2, v2, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget-object v2, v2, Lcom/ngame/resources/ResourceDecompressActivity;->eventHandler:Lcom/ngame/resources/IResourceDecompressEventHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ExtractEnd-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v4, v4, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget v4, v4, Lcom/ngame/resources/ResourceDecompressActivity;->md5RetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/ngame/resources/IResourceDecompressEventHandler;->RD_OnMD5CheckError(Ljava/lang/String;Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;)V

    .line 263
    iget-object v2, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v2, v2, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget v3, v2, Lcom/ngame/resources/ResourceDecompressActivity;->md5RetryCount:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/ngame/resources/ResourceDecompressActivity;->md5RetryCount:I

    .line 264
    iget-object v2, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v2, v2, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    iget v2, v2, Lcom/ngame/resources/ResourceDecompressActivity;->md5RetryCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 266
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v0, v0, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {v0}, Lcom/ngame/resources/ResourceDecompressActivity;->access$800(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v0, v0, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {v0}, Lcom/ngame/resources/ResourceDecompressActivity;->access$800(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/ngame/resources/ExtracterMSG;->START_EXTRACT:Lcom/ngame/resources/ExtracterMSG;

    invoke-virtual {v1}, Lcom/ngame/resources/ExtracterMSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 270
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 271
    sget-object v4, Lcom/ngame/resources/MainMSG;->EXTRACT_MD5_ERROR:Lcom/ngame/resources/MainMSG;

    invoke-virtual {v4}, Lcom/ngame/resources/MainMSG;->ordinal()I

    move-result v4

    iput v4, v2, Landroid/os/Message;->what:I

    .line 272
    iget-object v4, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileName:Ljava/lang/String;

    iget-object v5, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileMD5:Ljava/lang/String;

    iget-object v1, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->errorMD5:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    aput-object v5, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v0, "error: md5 is not match, file \'%s\' request:%s local: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v0, v0, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {v0}, Lcom/ngame/resources/ResourceDecompressActivity;->access$700(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;->this$1:Lcom/ngame/resources/ResourceDecompressActivity$2;

    iget-object v0, v0, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-static {v0}, Lcom/ngame/resources/ResourceDecompressActivity;->access$700(Lcom/ngame/resources/ResourceDecompressActivity;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/ngame/resources/MainMSG;->EXTRACT_FINISH:Lcom/ngame/resources/MainMSG;

    invoke-virtual {v1}, Lcom/ngame/resources/MainMSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method
