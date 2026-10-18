.class Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$1;
.super Ljava/lang/Thread;
.source "COSFileUploadObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->Add(ILjava/lang/String;Ljava/lang/String;Lcom/tdatamaster/tdm/ITDataMasterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;


# direct methods
.method constructor <init>(Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$1;->this$0:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver$1;->this$0:Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;

    invoke-static {v0}, Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;->access$000(Lcom/tdatamaster/tdm/bridge/COSFileUploadObserver;)V

    return-void
.end method
