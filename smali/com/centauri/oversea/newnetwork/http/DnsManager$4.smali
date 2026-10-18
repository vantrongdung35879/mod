.class Lcom/centauri/oversea/newnetwork/http/DnsManager$4;
.super Ljava/lang/Object;
.source "DnsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/http/DnsManager;->prefetchDns(Ljava/util/List;)V
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

    .line 154
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$4;->this$0:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$4;->val$hostList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 158
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$4;->val$hostList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager$4;->val$hostList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :catch_0
    const-string v0, "DnsManager"

    const-string v1, "prefetchDns exception."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
