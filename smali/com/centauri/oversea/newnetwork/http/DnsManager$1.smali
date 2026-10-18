.class Lcom/centauri/oversea/newnetwork/http/DnsManager$1;
.super Ljava/lang/Object;
.source "DnsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/http/DnsManager;->ipWithHost(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newnetwork/http/DnsManager;

.field final synthetic val$hostList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/http/DnsManager;Ljava/util/List;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$1;->this$0:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$1;->val$hostList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$1;->val$hostList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$1;->val$hostList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    array-length v3, v2

    if-lez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$1;->this$0:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    invoke-static {v3}, Lcom/centauri/oversea/newnetwork/http/DnsManager;->access$000(Lcom/centauri/oversea/newnetwork/http/DnsManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$1;->val$hostList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :catch_0
    const-string v0, "DnsManager"

    const-string v1, "ipWithHost exception."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
