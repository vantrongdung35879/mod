.class Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;
.super Ljava/util/HashMap;
.source "UploadTapdFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;)V
    .locals 1

    .line 158
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 159
    const-string p1, "exsitLogFiles"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string p1, "logZipName"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string p1, "logZipSize"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string p1, "logZipMD5"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string p1, "exsitPhotoFiles"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string p1, "photoZipName"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string p1, "photoZipSize"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string p1, "photoZipMD5"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string p1, "exsitVideoFiles"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo p1, "videoZipName"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo p1, "videoZipSize"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo p1, "videoZipMD5"

    invoke-virtual {p0, p1, v0}, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
