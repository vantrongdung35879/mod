.class Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask$1;
.super Ljava/lang/Object;
.source "IcmpDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask$1;->this$1:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;

    iget-object v1, v0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;

    iget-object v1, v1, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/ihoc/tgpatask/transceivertool/local/IcmpDetect$AsyncTask;->targetIp:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
