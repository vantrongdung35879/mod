.class Lcom/ngame/resources/ResourceDecompressActivity$2;
.super Landroid/os/Handler;
.source "ResourceDecompressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ngame/resources/ResourceDecompressActivity;->startResourceDecompresss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ngame/resources/ResourceDecompressActivity;


# direct methods
.method constructor <init>(Lcom/ngame/resources/ResourceDecompressActivity;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 220
    iget p1, p1, Landroid/os/Message;->what:I

    sget-object v0, Lcom/ngame/resources/ExtracterMSG;->START_EXTRACT:Lcom/ngame/resources/ExtracterMSG;

    invoke-virtual {v0}, Lcom/ngame/resources/ExtracterMSG;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 221
    iget-object p1, p0, Lcom/ngame/resources/ResourceDecompressActivity$2;->this$0:Lcom/ngame/resources/ResourceDecompressActivity;

    invoke-virtual {p1}, Lcom/ngame/resources/ResourceDecompressActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    new-instance v0, Lcom/ngame/resources/ResourceDecompressActivity$2$1;

    invoke-direct {v0, p0}, Lcom/ngame/resources/ResourceDecompressActivity$2$1;-><init>(Lcom/ngame/resources/ResourceDecompressActivity$2;)V

    invoke-static {p1, v0}, Lcom/ngame/extractor/sevenzwrapper;->Init(Landroid/content/res/AssetManager;Lcom/ngame/extractor/IExtractCallback;)V

    .line 283
    invoke-static {}, Lcom/ngame/resources/RD_Path;->getResourcesInputPath()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {}, Lcom/ngame/resources/RD_Path;->getResourcesOutputPath()Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start extract file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Resources"

    invoke-static {v2, v1}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 286
    invoke-static {p1, v0, v1}, Lcom/ngame/extractor/sevenzwrapper;->extractFile(Ljava/lang/String;Ljava/lang/String;Lcom/ngame/extractor/IExtractCallback;)I

    .line 288
    invoke-static {}, Lcom/ngame/extractor/sevenzwrapper;->UnInit()V

    :cond_0
    return-void
.end method
