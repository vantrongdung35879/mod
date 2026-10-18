.class Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$2;
.super Ljava/lang/Object;
.source "UploadTapdFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;->showTaskExecuteResultByToast(Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;

.field final synthetic val$taskResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$2;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask;

    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$2;->val$taskResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 489
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$2;->val$taskResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorCode:Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;

    .line 490
    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$AsyncTask$2;->val$taskResult:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;

    iget-object v2, v2, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskResult;->errorDesc:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 489
    const-string/jumbo v2, "tapd result: %d, desc: %s"

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {}, Lcom/ihoc/tgpatask/TransceiverManager;->getInstance()Lcom/ihoc/tgpatask/TransceiverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ihoc/tgpatask/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
