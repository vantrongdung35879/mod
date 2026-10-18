.class public Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/download/KeepAliveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeepAliveServiceLocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/download/KeepAliveService;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/download/KeepAliveService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/KeepAliveService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public bringServiceToForeground(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/download/KeepAliveService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[bringServiceToForeground]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/KeepAliveService;

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/download/KeepAliveService;->access$102(Lcom/ihoc/mgpa/download/KeepAliveService;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/KeepAliveService;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/download/KeepAliveService;->access$202(Lcom/ihoc/mgpa/download/KeepAliveService;I)I

    .line 4
    iget-object p1, p0, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/KeepAliveService;

    invoke-static {p1}, Lcom/ihoc/mgpa/download/KeepAliveService;->access$300(Lcom/ihoc/mgpa/download/KeepAliveService;)V

    return-void
.end method

.method public isStartForeground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/KeepAliveService;

    invoke-static {v0}, Lcom/ihoc/mgpa/download/KeepAliveService;->access$500(Lcom/ihoc/mgpa/download/KeepAliveService;)Z

    move-result v0

    return v0
.end method

.method public stopForeground()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/download/KeepAliveService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[stopForeground]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/download/KeepAliveService$KeepAliveServiceLocalBinder;->this$0:Lcom/ihoc/mgpa/download/KeepAliveService;

    invoke-static {v0}, Lcom/ihoc/mgpa/download/KeepAliveService;->access$400(Lcom/ihoc/mgpa/download/KeepAliveService;)V

    return-void
.end method
