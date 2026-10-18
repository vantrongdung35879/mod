.class Lcom/ihoc/mgpa/download/BgPreDownloadHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->onBecameBackground()V
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
    iput-object p1, p0, Lcom/ihoc/mgpa/download/BgPreDownloadHelper$3;->this$0:Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgPreDownloadProxy;->start()V

    return-void
.end method
