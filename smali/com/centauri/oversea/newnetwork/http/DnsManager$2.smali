.class Lcom/centauri/oversea/newnetwork/http/DnsManager$2;
.super Ljava/lang/Object;
.source "DnsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/http/DnsManager;->ipWithUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newnetwork/http/DnsManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/http/DnsManager;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$2;->this$0:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$2;->this$0:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    invoke-static {v1}, Lcom/centauri/oversea/newnetwork/http/DnsManager;->access$000(Lcom/centauri/oversea/newnetwork/http/DnsManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    const-string v0, "DnsManager"

    const-string v1, "ipWithUrl exception."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
