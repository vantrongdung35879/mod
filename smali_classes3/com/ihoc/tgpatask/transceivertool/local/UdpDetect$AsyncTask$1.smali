.class Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask$1;
.super Ljava/lang/Object;
.source "UdpDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;

    iget-object v1, v0, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;->access$002(Lcom/ihoc/tgpatask/transceivertool/local/UdpDetect$AsyncTask;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
