.class Lcom/ihoc/mgpa/download/BgPreDownloadHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->removeForegroundCallbackListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/download/BgPreDownloadHelper;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/download/BgPreDownloadHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$2;->this$0:Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->get(Landroid/content/Context;)Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$2;->this$0:Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks;->removeListener(Lcom/ihoc/mgpa/toolkit/util/ForegroundCallbacks$Listener;)V

    return-void
.end method
