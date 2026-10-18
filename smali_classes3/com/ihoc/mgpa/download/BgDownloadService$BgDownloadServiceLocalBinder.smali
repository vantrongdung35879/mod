.class public Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/download/BgDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BgDownloadServiceLocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/download/BgDownloadService;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/download/BgDownloadService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/BgDownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public bringServiceToForeground(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/BgDownloadService;

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/download/BgDownloadService;->access$002(Lcom/ihoc/mgpa/download/BgDownloadService;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/BgDownloadService;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/download/BgDownloadService;->access$102(Lcom/ihoc/mgpa/download/BgDownloadService;I)I

    .line 3
    iget-object p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/BgDownloadService;

    invoke-static {p1}, Lcom/ihoc/mgpa/download/BgDownloadService;->access$200(Lcom/ihoc/mgpa/download/BgDownloadService;)V

    .line 4
    sget-object p1, Lcom/ihoc/mgpa/download/DownloadState;->ERROR:Lcom/ihoc/mgpa/download/DownloadState;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/download/DownloadState;->getState()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/BgDownloadService;

    invoke-static {p1}, Lcom/ihoc/mgpa/download/BgDownloadService;->access$300(Lcom/ihoc/mgpa/download/BgDownloadService;)V

    :cond_0
    return-void
.end method

.method public isStartForeground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgDownloadService$BgDownloadServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/BgDownloadService;

    invoke-static {v0}, Lcom/ihoc/mgpa/download/BgDownloadService;->access$400(Lcom/ihoc/mgpa/download/BgDownloadService;)Z

    move-result v0

    return v0
.end method
