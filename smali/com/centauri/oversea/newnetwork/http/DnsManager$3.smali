.class Lcom/centauri/oversea/newnetwork/http/DnsManager$3;
.super Ljava/lang/Object;
.source "DnsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/http/DnsManager;->prefetchDns(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newnetwork/http/DnsManager;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/http/DnsManager;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$3;->this$0:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$3;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$3;->val$host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    const-string v0, "DnsManager"

    const-string v1, "prefetchDns exception."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
